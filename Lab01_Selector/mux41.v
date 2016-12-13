`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/09/12 14:13:21
// Design Name: 
// Module Name: mux41
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


module mux41(X,Y,F);
input [3:0] X;
input [1:0] Y;
output reg F;

always @(Y or X)
    if (Y == 0) F = X[0];
    else if (Y == 1) F = X[1];
    else if (Y == 2) F = X[2];
    else if (Y == 3) F = X[3];
    else F = 1'b0;
endmodule
