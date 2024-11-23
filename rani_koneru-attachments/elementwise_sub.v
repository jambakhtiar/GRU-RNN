`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2024 10:15:05 AM
// Design Name: 
// Module Name: elementwise_sub
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


module elementwise_sub #(VP=6, WI1=10, WF1=22, WI2=2, WF2=14, WI_out=10, WF_out=22)
                          (input [(WI1+WF1)-1:0]in1, input [VP*(WI2+WF2)-1:0]in2, output reg [VP*(WI_out+WF_out)-1:0] out);
                          
wire [WI_out+WF_out-1:0]out_temp[0:VP-1];
integer j;

genvar i;

generate
           
    for (i=VP-1; i>=0; i=i-1) begin
        sub #(.WI1(WI1), .WI2(WI2), .WF1(WF1), .WF2(WF2), .WIO(WI_out), .WFO(WF_out))
            sub_ele      (.in1(in1), .in2(in2[(i+1)*(WI2+WF2)-1-:(WI2+WF2)]), .overFlow(), .out(out_temp[VP-1-i]))  ;
    end          

endgenerate  

always @(*) begin
    for (j=0;j<VP;j=j+1) begin
        out={out,out_temp[j]};
    end
end                     
endmodule
