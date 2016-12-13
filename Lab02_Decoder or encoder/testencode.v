`timescale 10 ns/ 1 ps
module test_seg7(); 
reg [15:0] sw;
reg btnd; 
wire [3:0] led;
wire [7:0] sel_seg;
wire [6:0] seg;
decode416 i1( .sw(sw),.btnd(btnd),.led(led),.sel_seg(sel_seg)
			,.seg(seg));

initial begin
btnd =1’b1; 
		  sw =16'h0001; #10;
		  sw =16'h0002; #10;
		  sw =16'h0004; #10;
		  sw =16'h0008; #10;
		  sw =16'h0010; #10;
		  sw =16'h0020; #10;
		  sw =16'h0040; #10;
		  sw =16'h0080; #10;
		  sw =16'h0100; #10;
		  sw =16'h0200; #10;
		  sw =16'h0400; #10;
		  sw =16'h0800; #10;
		  sw =16'h1000; #10;
		  sw =16'h2000; #10;
		  sw =16'h4000; #10;
		  sw =16'h8000; #10;
btnd =1’b0; 
		  sw =16'h0001; #10;
		  sw =16'h0002; #10;
		  sw =16'h0004; #10;
		  sw =16'h0008; #10;
		  sw =16'h0010; #10;
		  sw =16'h0020; #10;
		  sw =16'h0040; #10;
		  sw =16'h0080; #10;
		  sw =16'h0100; #10;
		  sw =16'h0200; #10;
		  sw =16'h0400; #10;
		  sw =16'h0800; #10;
		  sw =16'h1000; #10;
		  sw =16'h2000; #10;
		  sw =16'h4000; #10;
		  sw =16'h8000; #10;
	end
endmodule