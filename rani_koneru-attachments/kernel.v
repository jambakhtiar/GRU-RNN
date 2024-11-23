`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2024 05:19:55 PM
// Design Name: 
// Module Name: kernel
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


module kernel #(EP=3, WI1_in=4, WF1_in=12, WI2_in=4, WF2_in=12, WIO=10, WFO=22)
                (input [EP*(WI1_in+WF1_in)-1:0]in1, input [EP*(WI1_in+WF1_in)-1:0]in2, input clk, input reset, input ctrl, output reg [WIO+WFO-1:0]out);

// WI1=matrix, WI2=vector

wire [WI1_in+WI2_in+WF1_in+WF2_in-1:0]out_mult[0:EP-1];
wire [WIO+WFO-1:0]out_add[0:EP-2];
reg [WIO+WFO-1:0]acc_out;
reg [WIO+WFO-1:0]out_temp_mux;
wire signed [WIO+WFO-1:0]out_temp;
genvar i,j;
generate 

for(i=EP-1;i>=0;i=i-1) begin

    mult #(.WI1(WI1_in), .WI2(WI2_in), .WF1(WF1_in), .WF2(WF2_in), .WIO(WI1_in+WI2_in), .WFO(WF1_in+WF2_in))
         m1    (.in1(in1[(i+1)*(WI1_in+WF1_in)-1-:(WI1_in+WF1_in)]), .in2(in2[(i+1)*(WI2_in+WF2_in)-1-:(WI2_in+WF2_in)]),.OVF(),.out(out_mult[EP-1-(i)]));
             
end

for(j=0; j<EP-1; j=j+1) begin

    if(j==0)
        adder #(.WI1(WI1_in+WI2_in), .WI2(WI1_in+WI2_in), .WF1(WF1_in+WF2_in), .WF2(WF1_in+WF2_in), .WIO(WIO), .WFO(WFO))
            a1      (.in1(out_mult[j]), .in2(out_mult[j+1]), .OVF(), .out(out_add[j]))  ;
    else
        adder #(.WI1(WI1_in+WI2_in), .WI2(WIO), .WF1(WF1_in+WF2_in), .WF2(WFO), .WIO(WIO), .WFO(WFO))
            a1      (.in1(out_mult[j+1]), .in2(out_add[j-1]), .OVF(), .out(out_add[j]))  ;

    
end

endgenerate

//assign out=out_add[EP-2];

 adder #(.WI1(WIO), .WI2(WIO), .WF1(WFO), .WF2(WFO), .WIO(WIO), .WFO(WFO))
            a2  (.in1(out), .in2(out_add[EP-2]), .OVF(), .out(out_temp))  ;
            
            
/*always @(*) begin
    if(!reset) begin
     if(ctrl) acc_out_t = out_add[EP-2];
     else acc_out_t = out_temp;
    end
end             
*/

always @(*) out_temp_mux = ctrl?out_add[EP-2]:out_temp;
always @(posedge clk) begin
    if(reset)  out<=0; //acc_out <=0; end
    else  out <= out_temp_mux;
    
end
//assign acc_out=ctrl?out_add[EP-2]:out_temp;
/*
always @(posedge clk) begin

    if(reset) begin
         out<=0;
         acc_out <= 0;
         
    end
    else begin
        
        //acc_out <= out;
       if(ctrl) begin 
            acc_out<=0;
            //out <= out_add[EP-2];
            
        end    
        else begin
            
            acc_out <= out_temp;
        end
        
        
        out<=acc_out;
        
    end
end
*/
endmodule

