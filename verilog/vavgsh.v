module vavgsh( vra, vrb, vrt );

input  [31 : 0] vra;
input  [31 : 0] vrb;
output [31 : 0] vrt;

wire   [31 : 0] vrt;
wire   [15 : 0] op0;
wire   [15 : 0] op1;

assign op0	= 	((vra[ 7: 0] + vrb[ 7: 0] + 1) >> 1) & 16'hffff;
assign op1	= 	((vra[15: 8] + vrb[15: 8] + 1) >> 1) & 16'hffff;
assign vrt	=	{op1, op0};            

endmodule
