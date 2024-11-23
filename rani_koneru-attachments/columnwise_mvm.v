`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2024 05:18:53 PM
// Design Name: 
// Module Name: columnwise_mvm
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



module columnwise_mvm #(EP=3, VP=3, WI1_in=4, WF1_in=12, WI2_in=4, WF2_in=12, WIO=10, WFO=22)
                        (input [(EP*VP)*(WI1_in+WF1_in)-1:0] in1, input [EP*(WI1_in+WF1_in)-1:0]in2, input clk, input reset, input ctrl, output reg [VP*(WIO+WFO)-1:0] out );


wire [WIO+WFO-1:0]out_temp[0:VP-1];     

integer j;                  
genvar i;

generate 
    for (i=VP-1; i>=0; i=i-1) begin
    
        kernel #(.EP(EP), .WI1_in(WI1_in), .WF1_in(WF1_in), .WI2_in(WI2_in), .WF2_in(WF2_in), .WIO(WIO), .WFO(WFO))
           k1     (.in1(in1[(i+1)*(EP*(WI1_in+WF1_in))-1-:EP*(WI1_in+WF1_in)]), .in2(in2), .clk(clk), .reset(reset), .ctrl(ctrl), .out(out_temp[VP-1-i]));
    
    end
endgenerate
always @(*) begin
    for (j=0;j<VP;j=j+1) begin
        out={out,out_temp[j]};
    end
end
endmodule

