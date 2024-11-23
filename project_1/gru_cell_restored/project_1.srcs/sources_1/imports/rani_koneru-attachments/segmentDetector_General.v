`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2017 11:18:20 AM
// Design Name: 
// Module Name: segmentDetector_General
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
module segmentDetector_General #(parameter WI_in = 2, WF_in = 6,
                         segWI = 3, segWF = 3,
                         WL_in = WI_in + WF_in,
                         segWL = segWI + segWF,
                         noSegments = 8,
                         outWL = $clog2(noSegments))
                        (input [WL_in - 1 : 0] absX,
                         output reg [outWL - 1 : 0] segmentNum);

    
    //Segment wires
    wire [segWL - 1 : 0] segmentRegs [0 : noSegments - 2];
    wire [WL_in - 1 : 0] segmentRegs_extended [0 : noSegments - 2];
    //=============================================
    //    Insert segment register values here
    //=============================================
    /*assign segmentRegs[0] = 7'b0000101;
    assign segmentRegs[1] = 7'b0001010;
    assign segmentRegs[2] = 7'b0001111;
    assign segmentRegs[3] = 7'b0010100;
    assign segmentRegs[4] = 7'b0011001;
    assign segmentRegs[5] = 7'b0011110;
    assign segmentRegs[6] = 7'b0100011;
    assign segmentRegs[7] = 7'b0101000;
    assign segmentRegs[8] = 7'b0101101;
    assign segmentRegs[9] = 7'b0110010;
    assign segmentRegs[10] = 7'b0110111;
    assign segmentRegs[11] = 7'b0111100;
    assign segmentRegs[12] = 7'b1000001;
    assign segmentRegs[13] = 7'b1000110;
    assign segmentRegs[14] = 7'b1001011;*/
    
    assign segmentRegs[0] = 6'b000101;
    assign segmentRegs[1] = 6'b001010;
    assign segmentRegs[2] = 6'b001111;
    assign segmentRegs[3] = 6'b010100;
    assign segmentRegs[4] = 6'b011001;
    assign segmentRegs[5] = 6'b011110;
    assign segmentRegs[6] = 6'b100011;
    
     /*assign segmentRegs[0] = 6'b001101;
     assign segmentRegs[1] = 6'b011011;*/
    
    
    //=============================================
    //        End segment register values
    //=============================================
    
    reg [31 : 0] i;

    genvar j;
    generate
        for (j = 0; j <= noSegments - 2; j = j + 1) begin : genExtenderModules
            FixedPoint_Extend_Unsigned #(.WI_IN(segWI), .WF_IN(segWF), .WI_OUT(WI_in), .WF_OUT(WF_in))
                extenderMod_00 (.in(segmentRegs[j]), .out(segmentRegs_extended[j]));
        end
    endgenerate
    
    always @* begin
        for(i = 0; i <= noSegments - 1; i = i + 1) begin
           if(i == 0) begin
                if(absX < segmentRegs_extended[0]) begin
                    segmentNum <= i;
                end
           end
           if(i == noSegments-1) begin
                if(absX >= segmentRegs_extended[noSegments-2]) begin
                    segmentNum <= i;
                end
           end
           if(i != 0 & i != noSegments - 1) begin
                if((absX >= segmentRegs_extended[i-1]) & (absX < segmentRegs_extended[i])) begin
                    segmentNum <= i;
                end
           end
        end
    end
    
endmodule
