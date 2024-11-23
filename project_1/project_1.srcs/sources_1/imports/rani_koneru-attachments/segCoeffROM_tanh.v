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
module segCoeffROM_tanh #(parameter NUM_SEGMENTS = 16, NUM_COEFF_PAIRS = NUM_SEGMENTS - 1,
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
            /*coeffROM[0] <= 32'b01111100100101010000000000111000;
            coeffROM[1] <= 32'b01100111110001100000011011110100;
            coeffROM[2] <= 32'b01001001110111000001100110001100;
            coeffROM[3] <= 32'b00101110111010000011001010010001;
            coeffROM[4] <= 32'b00011011101011100100101001100000;
            coeffROM[5] <= 32'b00001111101000010101110100001011;
            coeffROM[6] <= 32'b00001000100111000110101000011110;
            coeffROM[7] <= 32'b00000100101011010111001010101011;
            coeffROM[8] <= 32'b00000010100001010111100000000111;
            coeffROM[9] <= 32'b00000001010110110111101101001100;
            coeffROM[10] <= 32'b00000000101110100111110101000001;
            coeffROM[11] <= 32'b00000000011000110111111001101001;
            coeffROM[12] <= 32'b00000000001101010111111100010101;
            coeffROM[13] <= 32'b00000000000111000111111101111010;
            coeffROM[14] <= 32'b00000000000011110111111110110011;*/
            
            /*coeffROM[0] <= 32'b01110011000000000000000110110100;
            coeffROM[1] <= 32'b00111100000011000010010001000011;
            coeffROM[2] <= 32'b00010101010110010101001100111111;
            coeffROM[3] <= 32'b00000110100001110110111001010110;
            coeffROM[4] <= 32'b00000001111001110111100110101100;
            coeffROM[5] <= 32'b00000000100011000111110111010111;
            coeffROM[6] <= 32'b00000000001010000111111101001001;*/
            
            //Using 8 bits per coefficient
            coeffROM[0] <= 16'b0111001100000010;
            coeffROM[1] <= 16'b0011110000100101;
            coeffROM[2] <= 16'b0001010101010011;
            coeffROM[3] <= 16'b0000011101101110;
            coeffROM[4] <= 16'b0000001001111010;
            coeffROM[5] <= 16'b0000000101111110;
            coeffROM[6] <= 16'b0000000001111111;
            
            /*coeffROM[0] <= 32'b01000111001111110001001000010110;
            coeffROM[1] <= 32'b00000100011100010111001001001100;*/
        end
        else begin
            memOut <= coeffROM[addrIn];
        end
    end
endmodule
