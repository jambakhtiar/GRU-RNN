`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2024 01:30:12 PM
// Design Name: 
// Module Name: gru_cell
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


//EP=32,VP=32

module gru_cell  #(EP=4, VP=4, Rows = 1824, time_steps = 2, Columns_i =96, Columns_r = 608, gru_size = 608, WI_mat=4, WF_mat=12, WI_vec=4, WF_vec=12, AWL=12, WI_int=10, WF_int=22, WI_act=2, WF_act=14)
                    (input clk, input reset, input [EP*(WI_vec+WF_vec)-1:0] in_vec, output [EP*(WI_vec+WF_vec)-1:0]next_state_quant);


               
wire [AWL-1:0] mat_ctr;
wire new_line;
wire h_t_begin;
wire [AWL-1:0] bias_ctr;
wire [31:0] new_set;
wire [2:0] delay;

wire [VP*(WI_int+WF_int)-1:0] columnwise_out;
wire [VP*(WI_int+WF_int)-1:0] bias_added_output;

wire [VP*(WI_act+WF_act)-1:0] r_data;
wire [VP*(WI_int+WF_int)-1:0]ele_mult_temp;

wire [VP*(WI_int+WF_int)-1:0] x_h_data;
wire  [VP*(WI_int+WF_int)-1:0]ele_add_temp;

wire  [VP*(WI_int+WF_int)-1:0]ele_temp_gru;
wire  [VP*(WI_int+WF_int)-1:0]ele_temp_1_z_hh;
wire  [VP*(WI_int+WF_int)-1:0]ele_temp_z_hh;
wire  [VP*(WI_int+WF_int)-1:0] next_state;
wire [VP*(WI_act+WF_act)-1:0] z_data;
wire [EP*(WI_vec+WF_vec)-1:0] h_t_1_data;
reg [VP*(WI_int+WF_int)-1:0] in_activation;
wire [VP*(WI_act+WF_act)-1:0] activation_out;
//reg [2*Rows*(WI_int+WF_int)-1:0] columnwise_whole_out;
//reg [VP*(WI_act+WF_act)-1:0] activation_whole_out;

wire [EP*VP*(WI_mat+WF_mat)-1:0] mat_in;
wire [EP*VP*(WI_mat+WF_mat)-1:0] bias;
wire modeSEL;
wire new_line_x_h;
wire new_line_r_h;
wire z_en;
wire r_en;
wire [31:0] z_addr;
wire [31:0] z_addr1;
wire [31:0] r_addr;
wire [31:0] r_addr1;
wire [31:0] x_h_addr;
wire [31:0] x_h_addr1;
wire [31:0] h_t_addr1;
wire [31:0] h_t_addr_1;
wire x_h_en;
wire r_h_en;
wire we_h; // to write into h_t 
wire r_h_mult;
//reg [(Rows/3)*(WI_act+WF_act)-1:0] z_out;
//reg [(Rows/3)*(WI_act+WF_act)-1:0] r_out;



reg [EP*(WI_vec+WF_vec)-1:0] in_vec_temp;
wire [EP*(WI_vec+WF_vec)-1:0] h_t_1;
wire [31:0] h_t_ctr;


//reg []


always @(posedge clk) begin

    if (h_t_begin) in_vec_temp <= h_t_1;
    else in_vec_temp <= in_vec;
end

RAM_P  #( .AWL(AWL), .DWL(EP*VP*(WI_mat+WF_mat)))
         RAM      (.din_a(), 
                    .din_b(),
                    .clka(clk), .clkb(clk),
                    .ENa(1), .ENb(1),
                    .WEa(0),.WEb(0),
                    .addr_a(mat_ctr), 
                    .addr_b(bias_ctr),
                    .dout_a(mat_in),
                    .dout_b(bias));

control_unit #( .EP(EP), .VP(VP), .gru_size(gru_size), .time_steps(time_steps), .Rows(Rows), .Columns_i(Columns_i), .Columns_r(Columns_r), .AWL(AWL))          
     ctrl_unit (.clk(clk), .reset(reset), .modeSEL(modeSEL), .mat_ctr(mat_ctr), .new_line(new_line), .new_line_r_h(new_line_r_h), .new_line_x_h(new_line_x_h), .h_t_begin(h_t_begin), .bias_ctr(bias_ctr), .h_t_ctr(h_t_ctr), .new_set(new_set), .delay(delay), .z_en(z_en), .r_en(r_en), .we_h(we_h)
                 ,   .z_addr(z_addr), .z_addr1(z_addr1), .r_addr(r_addr), .r_addr1(r_addr1), .x_h_addr1(x_h_addr1), .h_t_addr1(h_t_addr1), .h_t_addr_1(h_t_addr_1), .x_h_en(x_h_en), .r_h_mult(r_h_mult), .r_h_en(r_h_en), .x_h_addr(x_h_addr));


columnwise_mvm #(.EP(EP), .VP(VP), .WI1_in(WI_mat), .WF1_in(WF_mat), .WI2_in(WI_vec), .WF2_in(WF_vec), .WIO(WI_int), .WFO(WF_int))
              MVM          (.in1(mat_in), .in2(in_vec_temp), .clk(clk), .reset(reset), .ctrl(new_line), .out(columnwise_out) );
 
                   
bias_add   #(.VP(VP), .EP(EP), .WI1(WI_int), .WF1(WF_int), .WI2(WI_mat), .WF2(WF_mat), .WI_out(WI_int), .WF_out(WF_int))
         BIAS    (.in1(columnwise_out), .in2(bias), .out(bias_added_output));

  
elementwise_mult #(.VP(VP), .WI1(WI_int), .WF1(WF_int), .WI2(WI_act), .WF2(WF_act), .WI_out(WI_int), .WF_out(WF_int))
            ele_mult1 (.in1(bias_added_output), .in2(r_data), .out(ele_mult_temp));

elementwise_add #(.VP(VP), .WI1(WI_int), .WF1(WF_int), .WI2(WI_int), .WF2(WF_int), .WI_out(WI_int), .WF_out(WF_int))
            ele_add1 (.in1(ele_mult_temp), .in2(x_h_data), .out(ele_add_temp));
                          
activation_function  #(.VP(VP), .WI_in((WI_int)), .WF_in(WF_int), .WI_out(WI_act), .WF_out(WF_act))
                ACT            (.in(in_activation), .reset(reset), .modeSEL(modeSEL), .ReLU_EN(0), .out(activation_out));

elementwise_mult #(.VP(VP), .WI1(WI_vec), .WF1(WF_vec), .WI2(WI_act), .WF2(WF_act), .WI_out(WI_int), .WF_out(WF_int))
            temp_gru (.in1(h_t_1_data), .in2(z_data), .out(ele_temp_gru));
  
elementwise_sub #(.VP(VP), .WI1(2), .WF1(1), .WI2(WI_act), .WF2(WF_act), .WI_out(WI_int), .WF_out(WF_int))
            temp_1_z_hh (.in1(3'b010), .in2(z_data), .out(ele_temp_1_z_hh));

elementwise_mult #(.VP(VP), .WI1(WI_int), .WF1(WF_int), .WI2(WI_act), .WF2(WF_act), .WI_out(WI_int), .WF_out(WF_int))
            temp_z_hh (.in1(ele_temp_1_z_hh), .in2(activation_out), .out(ele_temp_z_hh));
            
elementwise_add #(.VP(VP), .WI1(WI_int), .WF1(WF_int), .WI2(WI_int), .WF2(WF_int), .WI_out(WI_int), .WF_out(WF_int))
            next_state_dut (.in1(ele_temp_z_hh), .in2(ele_temp_gru), .out(next_state));

elementwise_quant #(.VP(VP), .WI_in(WI_int), .WF_in(WF_int), .WI_out(WI_vec), .WF_out(WF_vec))
            quantizer (.in(next_state), .out(next_state_quant));
                            
//store hidden vector into a register file
register_file #(.WD_I(EP*WI_vec), .WD_F(EP*WF_vec), .addresses(((time_steps+1)*gru_size)/EP))
               REG_h_t         (.clk(clk), .reset(reset), .we1(we_h), .w_data1(next_state_quant), .w_a1(h_t_addr1), .ra1(h_t_ctr), .data1(h_t_1), .ra2(h_t_addr_1), .data2(h_t_1_data) );

register_file #(.WD_I(VP*WI_int), .WD_F(VP*WF_int), .addresses(gru_size/VP))
               REG_x_h         (.clk(clk), .reset(reset), .we1(x_h_en), .w_data1(bias_added_output), .w_a1(x_h_addr), .ra1(x_h_addr1), .data1(x_h_data), .ra2(), .data2() );
 
  
register_file_r_z  #(.WD_I(VP*WI_act), .WD_F(VP*WF_act), .addresses(Rows/VP))
               REG2         (.clk(clk), .reset(reset), .we1(z_en), .we2(r_en), .we3(r_h_en), .w_data1(activation_out), .w_data2(activation_out), .w_data3(activation_out), .w_a1(z_addr), .w_a2(r_addr), .w_a3(), .ra1(z_addr1), .ra2(r_addr1), .ra3(), .data1(z_data), .data2(r_data), .data3());



always @(posedge clk) begin

        if(r_h_mult) in_activation <= ele_add_temp; //used to be r_h_mult
        else in_activation <= bias_added_output;
end


endmodule
