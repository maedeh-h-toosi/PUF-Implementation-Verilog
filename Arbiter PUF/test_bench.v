// Verilog Test Fixture Template
`timescale 1 ns / 1 ps

module test_bench;
 
	reg pulse;
	reg  challenge;
	wire response;
	
	
 arbiter uut(
 	.pulse(pulse) ,
	.challenge(challenge),
	.response(response)
 
 );
 
 initial begin
		// Initialize Inputs
		challenge = 3'b000;
		pulse = 0;
		#10;
      challenge = 3'b001;
		pulse =1;
		#10;
      challenge = 3'b010;
		pulse =0;
		#10;
      challenge = 3'b011;
		pulse =1;
		#10;
   
		challenge = 3'b100;
		pulse = 0;
		#10;
      challenge = 3'b101;
		pulse =1;
		#10;
      challenge = 3'b110;
		pulse =0;
		#10;
      challenge = 3'b111;
		pulse =1;
		#10;
      challenge = 3'b000;
		pulse =0;


		// Add stimulus here

	end

endmodule
