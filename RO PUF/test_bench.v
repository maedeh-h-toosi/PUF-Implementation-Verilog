`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:44:45 04/16/2021 
// Design Name: 
// Module Name:    test_bench 
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
module test_bench;

	// Inputs
	reg [2:0] sel1;
	reg [2:0] sel2;
	reg enable;
	reg reset;

	// Outputs
	wire m1out;
	wire m2out;
	wire [7:0] count;
	wire [7:0] count_1;
	wire [7:0] count_2;

	// Instantiate the Unit Under Test (UUT)
	top_module uut (
		.sel1(sel1), 
		.sel2(sel2), 
		.enable(enable), 
		.reset(reset), 
		.m1out(m1out), 
		.m2out(m2out), 
		.count(count), 
		.count_1(count_1), 
		.count_2(count_2)
	);

	initial begin
		// Initialize Inputs
		sel1 = 0;
		sel2 = 0;
		enable = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#10;
      sel1 = 3'b000;
		sel2 = 3'b001;
		enable =1;
		reset = 0;
		// Add stimulus here

	end


endmodule
