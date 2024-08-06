`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:51:52 04/15/2021 
// Design Name: 
// Module Name:    top_module 
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
module top_module(input [2:0] sel1,input[2:0] sel2,
           input enable,reset,
          output m1out,m2out,
          output [7:0]count , output [7:0]count_1, 
			 output [7:0] count_2
    );
  wire [7:0] din1, din2;
        
        (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)  RO1 RO1(enable, din1[0]);
        (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)  RO2 RO2(enable, din1[1]);
        (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)  RO3 RO3(enable, din1[2]);
        (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)  RO4 RO4(enable, din1[3]);
		  
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   RO5 RO5(enable, din1[4]);
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   RO6 RO6(enable, din1[5]);
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   RO7 RO7(enable, din1[6]);
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   RO8 RO8(enable, din1[7]);
        
		  
		 (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   RO1 RO9(enable,  din2[0]);
        (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)  RO2 RO10(enable, din2[1]);
        (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)  RO3 RO11(enable, din2[2]);
        (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)  RO4 RO12(enable, din2[3]);
		  
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   RO5 RO13(enable, din2[4]);
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   RO6 RO14(enable, din2[5]);
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   RO7 RO15(enable, din2[6]);
       (* S= "TRUE"*)(* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true" *)   RO8 RO16(enable, din2[7]);
      MUX3_8 M1(din1,m1out,sel1 );
      MUX3_8 M2(din2,m2out ,sel2);
		 
      
	counter count(m2out,m1out,enable,reset, count_2, count_1);
   compare comp(count_2,count_1,count) ;

endmodule
