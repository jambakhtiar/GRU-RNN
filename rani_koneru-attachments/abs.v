`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2017 02:49:50 PM
// Design Name: 
// Module Name: abs
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


module abs #(parameter WL = 8)
            (input signed [WL - 1 : 0] in,
             output [WL -1  : 0] absOut);

    assign absOut = (in[WL-1] == 1'b1) ? (~in) + {{(WL-1){1'b0}}, 1'b1} : in;

endmodule
