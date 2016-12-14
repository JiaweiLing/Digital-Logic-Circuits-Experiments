`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/09/25 20:59:51
// Design Name: 
// Module Name: ALU_tb
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

`define WIDTH 8

module ALU_tb(

    );
    
    integer N;
    reg Cin;
    reg [`WIDTH - 1:0] A;
    reg [`WIDTH - 1:0] B;
          
    wire Carry;
    wire [`WIDTH - 1:0] Result;
    wire Zero;
    wire Overflow;
          
    ALU #(`WIDTH) alu (.Cin(Cin), .A(A), .B(B), .Carry(Carry), .Result(Result), .Zero(Zero), .Overflow(Overflow));
                
    initial begin
        //$monitor ("Time = %d, Cin = %b, A = %b, B = %b, Carry = %b, Result = %b, Zero = %b, Overflow = %b", $time, Cin, A, B, Carry, Result, Zero, Overflow);
        Cin = 0;
        A = 0;
        B = 0;
    end
                      
    initial begin
        for (N = 0; N < 131071; N = N + 1)
            #10 {Cin, A, B} = {Cin, A, B} + 1;
            #1
            if (Cin == 0) begin
                if (Result == A + B) begin
                    $display("PASS");
                end
                else begin 
                    $display("FAIL [Result = %b, Cin = %b, A = %b, B = %b]s", Result, Cin, A, B);
                    $finish;
                end
            end
            else begin
                if (Result == A - B) begin
                    $display("PASS");
                end
                else begin 
                    $display("FAIL [Result = %b, Cin = %b, A = %b, B = %b]", Result, Cin, A, B);
                    $finish;
                end
            end
        #10 $finish;
    end
    
endmodule
