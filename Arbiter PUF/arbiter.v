`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:14:51 04/15/2021 
// Design Name: 
// Module Name:    arbiter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
//`include "parameters.vh"
module arbiter(	
	input pulse,
	input [2 :0] challenge,
	output response
	);
	
	wire delay_line_out_1 ;
	wire delay_line_out_2 ;
	
//instant module delay_line
	delay_line inst_delay_line(
		.ipulse(pulse),
		.ichallange(challenge),
		.out_1(delay_line_out_1),
		.out_2(delay_line_out_2)
	);

//instant module d flipflop
	D_FF inst_DFF(
	.dff_in(delay_line_out_1),
	.clk(delay_line_out_2),
	.dff_out(response)
	);

endmodule
