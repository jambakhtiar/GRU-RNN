`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2024 06:48:56 PM
// Design Name: 
// Module Name: bias_add
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

module bias_add #(EP=3, VP=3, WI1 = 4, WF1 = 12, WI2 = 4, WF2 = 12, WI_out = 10, WF_out = 22 )
                    (input [VP*(WI1+WF1)-1:0] in1, input [EP*VP*(WI2+WF2)-1:0] in2, output reg [VP*(WI_out+WF_out)-1:0] out);
       
wire [WI_out+WF_out-1:0] out_add [0:VP-1];  
integer j;                  
genvar i;

generate

for (i=VP-1; i>=0; i=i-1) begin
        adder #(.WI1(WI1), .WI2(WI2), .WF1(WF1), .WF2(WF2), .WIO(WI_out), .WFO(WF_out))
            a1      (.in1(in1[(i+1)*(WI1+WF1)-1-:(WI1+WF1)]), .in2(in2[(i+1)*(WI2+WF2)-1-:(WI2+WF2)]), .OVF(), .out(out_add[VP-1-i]))  ;
end
endgenerate       

always @(*) begin
    for (j=0;j<VP;j=j+1) begin
        out={out,out_add[j]};
    end
end
             
endmodule

