`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:19:50 04/15/2021 
// Design Name: 
// Module Name:    D_FF 
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
module D_FF(
	input dff_in,
	input clk,
	output reg dff_out
    );
	 
	 parameter C_DFF_type = "PRIMITIVE"; 
	 wire w_dff;



	generate
		if(C_DFF_type == "GENERIC") begin: dff_generic
		always@(posedge clk)
		begin
		dff_out <= dff_in ;
		end
		end
	endgenerate
	
	generate

// base on D Flip-Flop with Clock Enable and Synchronous Reset
//FDRE is a single D-type flip-flop with data (D), clock enable (CE), and synchronous reset (R) inputs
// and data output (Q). The synchronous reset (R) input, when High,
// overrides all other inputs and resets the Q output Low on the Low-to-High clock (C) transition.	
		if(C_DFF_type == "PRIMITIVE") begin: dff_primitive
		FDRE #(
		.INIT(1'b0)  // initial regeister value
		) FDRE_inst (
		.Q(w_dff),  // 1 bit for data output
		.C(clk),		// 1 bit for clock input
		.CE(1'b1),	// 1 bit for clock enable input
		.R(1'b0),	// 1 bit for syncroune reset input
		.D(dff_in)	// 1 bit for data input
		);
		end
	endgenerate
	
	always @(*)
	dff_out <= w_dff;

endmodule
