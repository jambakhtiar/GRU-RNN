`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2024 05:33:36 PM
// Design Name: 
// Module Name: mult
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



`define WIO1 (WIO >= 2)? (WIO+frc_len-2) : frc_len

`define Max_len ((int_len+frc_len-2)>= (WIO+frc_len-1)) ? (int_len+frc_len-2) : (WIO+frc_len-1)

`define trun_size (WIO < int_len)? ((int_len+frc_len-1)-(WIO+frc_len-1)) : 1


module mult #(parameter WI1 = 4, //INPUT-1 integer length
												WF1 = 12, //INPUT-1 fraction length
												WI2 = 4, //INPUT-2 integer length
												WF2 = 12, //INPUT-2 fraction length
												WIO = 10, //OUTPUT integer  length
												WFO = 22) //OUTPUT fraction length

								 (input signed [WI1+WF1-1:0] in1,
								  input signed [WI2+WF2-1:0] in2,
								  output reg OVF,
								  output  reg signed [WIO+WFO-1:0] out
								  );

localparam int_len = WI1+WI2;
localparam frc_len = WF1+WF2;

reg [int_len+frc_len-1:0] reg_in1;
reg [int_len+frc_len-1:0] reg_in2;
wire signed [WIO + WFO - 1 : 0] tempOut;						  
reg [(`trun_size)-1:0] reg_trun;
reg [(`trun_size)-1:0] reg_sign;	

wire [int_len+frc_len-1:0] tmp;
assign tempOut = tmp[WIO + WFO - 1 : 0];

reg [WIO-1:0] int_out;
reg [WFO-1:0] frc_out;

//-----------------------------------------------------------------------------------//

	assign tmp = in1 * in2; 

//----------------------------------------------------------------------------------//

	always @* begin
	
		if (WFO > frc_len) begin
			frc_out = {tmp[frc_len-1:0], {(WFO-frc_len){1'b0}}};
		end
		else if(WFO == frc_len) begin
		  frc_out = tmp[frc_len-1:0];
		end
		else begin //(WFO<frc_len)
			frc_out = tmp[frc_len-1:frc_len-WFO];
		end
	
	end

//-------------------------------------------------------------------------------//
//OUTPUT_INTEGER
	
	always @* begin 
		
		if (WIO > int_len) begin
			int_out = {{(WIO-int_len){tmp[int_len+frc_len-1]}} , tmp[int_len+frc_len-1:frc_len] };
				OVF = 1'b0;
				reg_sign = tmp[int_len+frc_len-1];
				reg_trun = 1'b0;
			end
		else if (WIO == int_len) begin
		  int_out = tmp[int_len+frc_len-1:frc_len];
		      OVF = 1'b0;
              reg_sign = tmp[int_len+frc_len-1];
              reg_trun = 1'b0;
		end
		else begin // (WIO<int_len)
			
			if (WIO == 1) begin
				int_out = tmp[int_len+frc_len-1];
				
				reg_trun = tmp[`Max_len: WIO+frc_len-1] ;
				reg_sign = {(`trun_size){tmp[int_len+frc_len-1]}};
				
					if ( reg_trun == reg_sign) begin
						OVF = 1'b0;
					end
					
					else begin
						OVF = 1'b1;
					end					
			end
			else begin
				int_out = {tmp[int_len+frc_len-1] , tmp[`WIO1:frc_len]};
				
				reg_trun = tmp[`Max_len: WIO+frc_len-1] ;
				reg_sign = {(`trun_size){tmp[int_len+frc_len-1]}};
				
					if ( reg_trun == reg_sign) begin
						OVF = 1'b0;
					end
					
					else begin
						OVF = 1'b1;
					end
			end
		end
	end
//------------------------------------------------------------------//

	always @* begin
		out = {int_out,frc_out};
   end
		
endmodule 

