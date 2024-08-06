`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:40:14 04/15/2021 
// Design Name: 
// Module Name:    compare 
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
module compare( input [7:0] count2,input [7:0] count1,
            output reg [7:0] count
    );

always@(count1 or count2 )
	begin		
			
			
			if(&count1)
				begin
				count<= count2[7:0];
			
				end
				
			if(&count2)
				begin
				count<= count1[7:0];
				
            end
				
				if(!(&count2) & !(&count1))
				begin
				count<= 0;
				
            end
			
	end
endmodule
