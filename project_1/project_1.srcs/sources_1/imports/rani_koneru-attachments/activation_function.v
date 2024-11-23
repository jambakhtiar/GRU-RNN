`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2024 12:58:19 PM
// Design Name: 
// Module Name: activation_function
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


module activation_function  #(VP=3, WI_in=12, WF_in=4, WI_out=2, WF_out=14)
                            (input [VP*(WI_in+WF_in)-1:0]in, input reset, input modeSEL, input ReLU_EN, output reg [VP*(WI_out+WF_out)-1:0] out);
 
 
 wire [WI_out+WF_out-1:0]out_temp[0:VP-1];
 integer j;
 genvar i;
 
generate
 for (i=VP-1; i>=0; i=i-1) begin: block_9     
                    
    PSigmoid #(.WI_in(WI_in), .WF_in(WF_in), .WI_out(WI_out), .WF_out(WF_out))
       psig1 (.x(in[(i+1)*(WI_in+WF_in)-1-:(WI_in+WF_in)]), .RST(reset), .modeSEL(modeSEL), .ReLU_EN(ReLU_EN), .y(out_temp[VP-1-i]));
       
 end
endgenerate

always @(*) begin
for(j=0; j<VP; j=j+1) begin
    out = {out, out_temp[j]};
end
end
endmodule
