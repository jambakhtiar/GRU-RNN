`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2017 11:17:00 AM
// Design Name: 
// Module Name: PSigmoid
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
module PSigmoid #(parameter WI_in = 6, WF_in = 14, A_WI = 1, A_WF = 7,
                B_WI = 1, B_WF = 7,
                A_WL = A_WI + A_WF,
                B_WL = B_WI + B_WF,
                memWL = A_WL + B_WL,
                segWI = 3, segWF = 3, WL_in = WI_in + WF_in,
                segWL = segWI + segWF,
                WI_out = 8, WF_out = 6, WL_out = WI_out + WF_out,
                multWI = (WI_in > A_WI) ? WI_in : A_WI,
                multWF = (WF_in > A_WF) ? WF_in : A_WF,
                multWL = multWI + multWF,
                noSegments = 8,
                segmentDetectOutWL = $clog2(noSegments))
               (input signed [WL_in - 1 : 0] x,
                input RST,
                input modeSEL, ReLU_EN,
                output signed [WL_out - 1 : 0] y);

    wire [WL_in - 1 : 0] absOut;
    wire [segmentDetectOutWL - 1 : 0] segDetectOut;
    wire signed [memWL -1  : 0] coeffROMOut, coeffROMOut_tanh, coeffROMOut_logsig;
    
    wire signed [A_WL - 1 : 0] aVal;
    wire signed [B_WL - 1 : 0] bVal;
    wire signed [WL_out - 1 : 0] fpOne;
    wire signed [WL_out - 1 : 0] addRes, twosCompOut, satMuxOut, modeMuxOut, subRes;
    wire signed [multWL - 1 : 0] multRes;
 
    assign fpOne = {{(WI_out-1){1'b0}}, 1'b1, {(WF_out){1'b0}}};
    
    //Take absolute value of input x
    abs #(.WL(WL_in))
        ABS_unit (.in(x), .absOut(absOut));
    
    //Instantiate Segment Detector
    segmentDetector_General #(.WI_in(WI_in), .WF_in(WF_in),
                              .segWI(segWI), .segWF(segWF),
                              .noSegments(noSegments))
        segDecoder (.absX(absOut),
                    .segmentNum(segDetectOut));

    //The output of the segment detector drives the saturationMux as well as the address input of the segment coefficient LUTROM
    //Instantiate the coeff LUTROM
    segCoeffROM_tanh #(.NUM_SEGMENTS(noSegments), .coeffA_WI(A_WI), .coeffA_WF(A_WF),
                       .coeffB_WI(B_WI), .coeffB_WF(B_WF))
        tanhCoeffROM (.RST(RST), .addrIn(segDetectOut),
                        .memOut(coeffROMOut_tanh));
    segCoeffROM_logsig #(.NUM_SEGMENTS(noSegments), .coeffA_WI(A_WI), .coeffA_WF(A_WF),
                         .coeffB_WI(B_WI), .coeffB_WF(B_WF))
        logsigCoeffROM (.RST(RST), .addrIn(segDetectOut),
                        .memOut(coeffROMOut_logsig));
    //Mode Select Mux
    assign coeffROMOut = modeSEL ? coeffROMOut_logsig : coeffROMOut_tanh;
    
    //Split the coefficient rom output accordingly
    assign aVal = coeffROMOut[memWL - 1 -: A_WL];
    assign bVal = coeffROMOut[memWL - 1 - A_WL : 0];
    
    //Compute ax
    FixedPoint_Multiplier #(.WI1(WI_in), .WF1(WF_in), .WI2(A_WI), .WF2(A_WF),
                            .WIO(multWI), .WFO(multWF))
        CoeffMult (.in1(absOut), .in2(aVal),
                   .FixedPoint_Mul_Out(multRes));
    
    //Compute ax + b
    FixedPoint_Adder #(.WI1(multWI), .WF1(multWF), .WI2(B_WI), .WF2(B_WF),
                       .WIO(WI_out), .WFO(WF_out))
        CoeffAdder (.in1(multRes), .in2(bVal),
                    .FixedPoint_Add_Out(addRes));
                    
    //Saturation Multiplexer
    assign satMuxOut = (segDetectOut == (noSegments-1)) ? fpOne : addRes;
                    
    //Take the twos complement of the addition result
    TwosComp #(.WL(WL_out))
        TwosComp_00 (.in(satMuxOut), .out(twosCompOut));
    
    FixedPoint_Sub #(.WI1(WI_out), .WF1(WF_out), .WI2(WI_out), .WF2(WF_out),
                             .WIO(WI_out), .WFO(WF_out))
                CoeffSub (.in1(fpOne), .in2(satMuxOut),
                          .FixedPoint_Sub_Out(subRes));
    
    //Mode select Mux
    assign modeMuxOut = modeSEL ? subRes : twosCompOut;
    
    wire signed [WL_out - 1 : 0] ReLU_Mux;
    assign ReLU_Mux = x[WL_in - 1] ? 'b0 : x;
    
    assign y = ReLU_EN ? ReLU_Mux : ((x[WL_in-1] == 1'b1) ? modeMuxOut : satMuxOut);
    
endmodule
