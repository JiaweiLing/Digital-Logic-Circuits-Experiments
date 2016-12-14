`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/09/25 20:18:57
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module ALU #(parameter WIDTH = 8) (
    input Cin,
    input [WIDTH - 1:0] A,
    input [WIDTH - 1:0] B,
    output Carry,
    output [WIDTH - 1:0] Result,
    output Zero,
    output Overflow
    );
    
    wire [WIDTH - 1:0] temp;
    
    assign temp = {WIDTH{Cin}} ^ B;
    Adder #(WIDTH) adder (.Cin(Cin), .A(A), .B(temp), .Carry(Carry), .Result(Result), .Zero(Zero), .Overflow(Overflow));
    
endmodule

module Adder #(parameter WIDTH = 8) (
    input Cin,
    input [WIDTH - 1:0] A,
    input [WIDTH - 1:0] B,
    output Carry,
    output [WIDTH - 1:0] Result,
    output Zero,
    output Overflow
    );
    
    assign {Carry, Result} = A + B + Cin;
    assign Zero = Result == 0 ? 1 : 0;
    assign Overflow = (A[WIDTH - 1] == B[WIDTH - 1]) && (Result[WIDTH - 1] != A[WIDTH - 1]);
    
endmodule
