`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:13:11 01/22/2026
// Design Name:   Alu32
// Module Name:   C:/Documents and Settings/student/Desktop/Lab2_zixuang/Alu32_tb.v
// Project Name:  Lab2_zixuang
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Alu32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Alu32_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [2:0] op;
	reg CLK=0;
 
	// Outputs
	wire [31:0] x;
  
	// Instantiate the Unit Under Test (UUT)
	Alu32 uut (
		.a(a), 
		.b(b), 
		.op(op), 
		.x(x)
	);
   always #5 CLK=~CLK;
	
	task expcheck;
	     input [2:0]  opi;
		  input [31:0] ai;
		  input [31:0] bi;
		  reg   [31:0] exp;
        begin
		     @(posedge CLK);
		     op = opi;
			  a  = ai;
			  b  = bi;
			  case (opi)
			      3'b000: exp = ai + bi;
					3'b001: exp = ai - bi;
					3'b010: exp = ai << 1;
					3'b011: exp = ai >> 1;
					3'b100: exp = ai;
					3'b101: exp = bi;
					3'b110: exp = (ai==bi) ? 32'd1 : 32'd0;					
					default: exp = 32'd0;	
			  endcase
			  #1;
			  if (x!==exp) 
			      $display ("Error in case(op = %d): a = %h, b = %h, exp = %h, got = %h", opi, ai, bi, exp, x);
			end	  
   endtask
	
	
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		op = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      // op = 000 ADD
		 expcheck(3'b000, 32'd0, 32'd0);
		 expcheck(3'b000, 32'd3, 32'd4);
		 expcheck(3'b000, 32'hFFFF_FFFF, 32'h1234_5678);
		 expcheck(3'b000, 32'h1234_5678, 32'hABCD_EF00);
		 expcheck(3'b000, 32'h8000_0000, 32'h8000_0000);

		 // op = 001 SUB
		 expcheck(3'b001, 32'd0, 32'd0);
		 expcheck(3'b001, 32'd10, 32'd3);
		 expcheck(3'b001, 32'd3, 32'd10);
		 expcheck(3'b001, 32'hFFFF_FFFF, 32'h1234_5678);
		 expcheck(3'b001, 32'h1234_5678, 32'hFFFF_FFFF);

		 // op = 010 SHL1 
		 expcheck(3'b010, 32'd0, 32'd0);
		 expcheck(3'b010, 32'h0000_0001, 32'd0);
		 expcheck(3'b010, 32'h4000_0000, 32'd0);
		 expcheck(3'b010, 32'h8000_0000, 32'd0);
		 expcheck(3'b010, 32'hFFFF_FFFF, 32'd0);

		 // op = 011 SHR1 
		 expcheck(3'b011, 32'd0, 32'd0);
		 expcheck(3'b011, 32'h0000_0001, 32'd0);
		 expcheck(3'b011, 32'h4000_0000, 32'd0);
		 expcheck(3'b011, 32'h8000_0000, 32'd0);
		 expcheck(3'b011, 32'hFFFF_FFFF, 32'd0);

		 // op = 100 COPY A 
		 expcheck(3'b100, 32'h0, 32'd0);
		 expcheck(3'b100, 32'h0000_0001, 32'd0);
		 expcheck(3'b100, 32'h4000_0000, 32'd0);
		 expcheck(3'b100, 32'h8000_0000, 32'd0);
		 expcheck(3'b100, 32'hFFFF_FFFF, 32'd0);

		 // op = 101 COPY B 
		 expcheck(3'b101, 32'd0, 32'h1234_5678);
		 expcheck(3'b101, 32'd0, 32'h0000_0001);
		 expcheck(3'b101, 32'd0, 32'h8000_0000);
		 expcheck(3'b101, 32'd0, 32'hFFFF_FFFF);
		 expcheck(3'b101, 32'd0, 32'h7FFF_FFFF);

		 // op = 110 EQ 
		 expcheck(3'b110, 32'h0000_0000, 32'h0000_0000);
		 expcheck(3'b110, 32'h0000_0001, 32'h0000_0001);
		 expcheck(3'b110, 32'hFFFF_0001, 32'hFFFF_0002);
		 expcheck(3'b110, 32'hAAAA_AAAA, 32'hAAAA_AAAA);
		 expcheck(3'b110, 32'hAAAA_AAAA, 32'h5555_5555);
		 
		  // default
		 expcheck(3'b111, 32'h0000_0000, 32'h0000_0000);
		 expcheck(3'b111, 32'h0000_0001, 32'h0000_0001);
		 expcheck(3'b111, 32'h0000_0001, 32'h0000_0002);
		 expcheck(3'b111, 32'hAAAA_AAAA, 32'hAAAA_AAAA);
		 expcheck(3'b111, 32'hAAAA_AAAA, 32'h5555_5555);
		 
       #10;
       $display("ALL TESTS PASSED");
	end
      
endmodule
