`timescale 1ns / 1ps
//`include "parameters.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:37:43 04/14/2021 
// Design Name: 
// Module Name:    delay_line 
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
module delay_line(
		input ipulse,
		input [2:0] ichallange,
		output out_1,
		output out_2
    );
	
	wire [7 : 0] net;
	
	assign net[0] = ipulse;
	assign net[1] = ipulse;
	
	generate 
	genvar i ; 
	for ( i=1 ; i <= 3 ; i = i+1)
	begin  : generate_block_identifier
		mux my_mux_1(
		.a(net [i*2 - 2]),
		.b(net [i*2 - 1]),
		.select(ichallange[i-1]),
		.c(net [i*2])
		);
		
		mux my_mux_2(
		.a(net [i*2 - 1]),
		.b(net [i*2 - 2]),
		.select(ichallange[i-1]),
		.c(net [i*2 + 1])
		);
	end
	endgenerate
	
	assign out_1 = net[6];
	assign out_2 = net[7];
	
endmodule

