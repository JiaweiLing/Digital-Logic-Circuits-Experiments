module decode416(x,en,y);
input [3:0] x; 
input en; 
output reg [15:0]y; 
integer i;
always @(x or en) 
	if (en) 
	begin
		for( i = 0; i <= 15; i = i+1) 
			if(x = i) y[i] = 1; 
			else      y[i] = 0; 
	end
	else y=16'b0000000000000000;
endmodule
