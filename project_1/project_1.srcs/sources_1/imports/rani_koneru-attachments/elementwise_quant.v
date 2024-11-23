`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2024 10:16:37 AM
// Design Name: 
// Module Name: elementwise_quant
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


module elementwise_quant #(VP=3, WI_in=10, WF_in=22, WI_out=4, WF_out=12)
                          (input [VP*(WI_in+WF_in)-1:0]in, output reg [VP*(WI_out+WF_out)-1:0] out);
                          
wire [WI_out+WF_out-1:0]out_temp[0:VP-1];
integer j;

genvar i;

generate
           
    for (i=VP-1; i>=0; i=i-1) begin: block_4
        quant #(.WI_in(WI_in), .WF_in(WF_in), .WI_out(WI_out), .WF_out(WF_out))
              q  (.in(in[(i+1)*(WI_in+WF_in)-1-:(WI_in+WF_in)]), .out(out_temp[VP-1-i]));
     end          

endgenerate  

always @(*) begin
    for (j=0;j<VP;j=j+1) begin
        out={out,out_temp[j]};
    end
end                     
endmodule


