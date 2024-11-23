`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2017 11:53:05 AM
// Design Name: 
// Module Name: segCoeffROM_logsig
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
module segCoeffROM_logsig #(parameter NUM_SEGMENTS = 16, NUM_COEFF_PAIRS = NUM_SEGMENTS - 1,
                            ADDR_WL = $clog2(NUM_COEFF_PAIRS), coeffA_WI = 1, coeffA_WF = 7,
                            coeffA_WL = coeffA_WI + coeffA_WF, coeffB_WI = 1, coeffB_WF = 7,
                            coeffB_WL = coeffB_WI + coeffB_WF,
                            memWL = coeffA_WL + coeffB_WL)
                           (input [ADDR_WL - 1 : 0] addrIn,
                            input RST,
                            output reg signed [memWL - 1 : 0] memOut);
                            
    //Tell synthesis tool to infer LUT ROM
    (* rom_style = "distributed" *) reg signed [memWL - 1 : 0] coeffROM [0 : NUM_COEFF_PAIRS - 1];
    
    always @* begin
        if(RST == 1'b1) begin
            /*coeffROM[0] <= 32'b00011111110010000100000000000100;
            coeffROM[1] <= 32'b00011110010011110100000001111111;
            coeffROM[2] <= 32'b00011011100110010100001000110011;
            coeffROM[3] <= 32'b00011000000110000100010101111100;
            coeffROM[4] <= 32'b00010100010001010100101001000000;
            coeffROM[5] <= 32'b00010000100010000101000000010100;
            coeffROM[6] <= 32'b00001101001001010101011001101010;
            coeffROM[7] <= 32'b00001010001111100101110011000000;
            coeffROM[8] <= 32'b00000111110110110110001010110101;
            coeffROM[9] <= 32'b00000101111101000110100000001110;
            coeffROM[10] <= 32'b00000100011110000110110010101111;
            coeffROM[11] <= 32'b00000011010101010111000010010111;
            coeffROM[12] <= 32'b00000010011110010111001111010000;
            coeffROM[13] <= 32'b00000001110100110111011001101111;
            coeffROM[14] <= 32'b00000001010110000111100010001001;*/
            
            /*coeffROM[0] <= 32'b00011111000111100100000000011110;
            coeffROM[1] <= 32'b00011001111000000100001110001010;
            coeffROM[2] <= 32'b00010010011001000100110011100100;
            coeffROM[3] <= 32'b00001011101010110101100101101001;
            coeffROM[4] <= 32'b00000110111000100110010101001100;
            coeffROM[5] <= 32'b00000011111000100110111010011010;
            coeffROM[6] <= 32'b00000010001001000111010100011100;*/
            
            
            //Using 8 bits per coefficient
            coeffROM[0] <= 16'b0001111101000000;
            coeffROM[1] <= 16'b0001101001000100;
            coeffROM[2] <= 16'b0001001001001101;
            coeffROM[3] <= 16'b0000110001011001;
            coeffROM[4] <= 16'b0000011101100101;
            coeffROM[5] <= 16'b0000010001101111;
            coeffROM[6] <= 16'b0000001001110101;
            
            /*coeffROM[0] <= 32'b00011010100101110100000111100110;
            coeffROM[1] <= 32'b00001001011000000101110111111000;*/
        end
        else begin
            memOut <= coeffROM[addrIn];
        end
    end
endmodule
