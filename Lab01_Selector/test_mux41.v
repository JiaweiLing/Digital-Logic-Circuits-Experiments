`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/09/12 14:18:11
// Design Name: 
// Module Name: test_mux41
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


module test_mux41();
reg [3:0] X;
reg [1:0] Y;
wire F;

mux41 i1(.X(X),.Y(Y),.F(F) );
initial begin
Y = 2'b00; X = 4'b1110;#10;
           X = 4'b0001;#10;
Y = 2'b00; X = 4'b1110;#10;
           X = 4'b0010;#10;
Y = 2'b00; X = 4'b1010;#10;
           X = 4'b0100;#10;
Y = 2'b00; X = 4'b0111;#10;
           X = 4'b1001;#10;
end
                             
endmodule
