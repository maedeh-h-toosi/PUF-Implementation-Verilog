`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:35:02 04/15/2021 
// Design Name: 
// Module Name:    counter 
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
module counter(
	input c2, c1,
   input enable , reset,
	output reg [7:0]count2 ,
	output reg [7:0]count1
    );

	 // initial begin count1=0;count2=0;end
	  
	always@(posedge c2 or posedge reset)
	begin
			if(reset)
			begin
				count2 <= 0;
			end	
						 
			else if(enable & !(&count1) & !(&count2))
			begin
				count2 <= count2 + 1;
			end	

	end				

	always@(posedge c1 or posedge reset)
	begin
			if(reset)
			begin
				count1 <= 0;
			end	
						 
			else if(enable & !(&count1) & !(&count2))
			begin
				count1 <= count1 + 1;
			end	

	end				

endmodule
