`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2024 10:18:54 AM
// Design Name: 
// Module Name: quant
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



module quant #(WI_in=10, WF_in=22, WI_out=4, WF_out=12)
                (input [WI_in+WF_in-1:0]in, output reg [WI_out+WF_out-1:0] out);
 


reg sign_bit;
reg [WI_out-2:0]int_part;   
reg [WF_out-1:0] frac_part;
             
always @(*) begin
    
    sign_bit = in[WI_in+WF_in-1];
    if(WI_out >= WI_in) begin
            
            int_part = {{(WI_out-WI_in){in[WI_in+WF_in-1]}}, in[WI_in+WF_in-2:WF_in]};
    end
    
    else begin
    
            int_part = {in[WF_in+WI_out-2:WF_in]};
    end
    
    if (WF_out >= WF_in) begin
    
            frac_part = {in[WF_in-1:0], {(WF_out-WF_in){1'b0}}};
    
    end
    
    else begin
    
            frac_part = in[WF_in-1-:WF_out];
    
    end
    
    out={sign_bit, int_part, frac_part};

end               
endmodule
