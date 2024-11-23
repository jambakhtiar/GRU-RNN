`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2024 08:04:47 PM
// Design Name: 
// Module Name: register_file_r_z
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



module register_file_r_z #(WD_I=10, WD_F=10, addresses=10)
                        (input clk, input reset, input we1, input we2, input we3, input [WD_I+WD_F-1:0] w_data1, input [WD_I+WD_F-1:0] w_data2, input [WD_I+WD_F-1:0] w_data3, input [31:0] w_a1, input [31:0] w_a2, input [31:0] w_a3, input [31:0] ra1, input [31:0] ra2, input [31:0] ra3, output [WD_I+WD_F-1:0] data1, output [WD_I+WD_F-1:0] data2, output [WD_I+WD_F-1:0] data3 );
                        
                        
 reg [WD_I+WD_F-1:0] reg_file [addresses-1:0];
 integer i;
 
 assign data1 = reg_file [ra1];
 assign data2 = reg_file [ra2];
 assign data3 = reg_file [ra3];
 
 always @(posedge clk) begin
 
 if(reset)begin
     for(i=0;i<addresses;i=i+1)begin
         reg_file[i] <= 0;
     end
 end
 else begin
    if(we1) begin
        reg_file[w_a1] <= w_data1;
    end
    if(we2) begin
        reg_file[w_a2] <= w_data2;
    end
    if(we3) begin
        reg_file[w_a3] <= w_data3;
    end
 end
 end
endmodule

