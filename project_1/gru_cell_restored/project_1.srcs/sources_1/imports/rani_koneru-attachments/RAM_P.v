`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2024 09:01:50 PM
// Design Name: 
// Module Name: RAM_P
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


module RAM_P #(parameter AWL=7, DWL=144)( input [DWL-1:0] din_a,
                                                            input [DWL-1:0] din_b,
                                                            input ENa,ENb,
                                                            input WEa, WEb,
                                                            input [AWL-1:0] addr_a, addr_b,
                                                            input clka,clkb,
                                                            output reg [DWL-1:0] dout_a,
                                                            output reg [DWL-1:0] dout_b);
                                                            
reg [DWL-1:0]RAM [2**AWL-1:0];  

initial begin


$readmemb("/home/jam/Downloads/GRU/project_1/project_1.srcs/weight_matrix.txt",RAM, 0, 1253); 
$readmemb("/home/jam/Downloads/GRU/project_1/project_1.srcs/gru_bias.txt",RAM, 1254, 1329);
end

always @(posedge clka) begin

    //if (RSTa) dout_a<=0;
     if(ENa) begin
        if(WEa) RAM[addr_a] <= din_a;
        dout_a <= RAM[addr_a];
        
    end
end            



always @(posedge clkb) begin

    //if (RSTb) dout_b<=0;
    if(ENb) begin
        if(WEb) RAM[addr_b] <= din_b;
        dout_b <= RAM[addr_b];
        
    end
end         
                                    
endmodule