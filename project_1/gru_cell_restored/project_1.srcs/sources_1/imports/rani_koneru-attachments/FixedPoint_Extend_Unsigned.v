`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2017 02:39:28 PM
// Design Name: 
// Module Name: FixedPoint_Extend_Unsigned
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


module FixedPoint_Extend_Unsigned #(parameter WI_IN = 3, WF_IN = 3,
                                      WI_OUT = 16, WF_OUT = 16)
                                   (input [WI_IN + WF_IN - 1 : 0] in,
                                    output [WI_OUT + WF_OUT - 1 : 0] out);

    assign out = {{(WI_OUT - WI_IN) {1'b0}}, in, {(WF_OUT - WF_IN) {1'b0}}};

endmodule
