`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:26:53 01/22/2026 
// Design Name: 
// Module Name:    Alu32 
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
module Alu32(
    input  [31:0] a,
    input  [31:0] b,
	 input  [2:0] op,
	 output reg[31:0] x
    );
	 always @(*) begin
	      case (op)
			      3'b000: x = a + b;
					3'b001: x = a - b;
					3'b010: x = a << 1;
					3'b011: x = a >> 1;
					3'b100: x = a;
					3'b101: x = b;
					3'b110: x = (a==b) ? 32'd1 : 32'd0;					
					default: x = 32'd0;	
			endcase
	end

endmodule
