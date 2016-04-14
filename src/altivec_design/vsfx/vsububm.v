module vsububm( vra, vrb, vrt );

input  [31 : 0] vra;
input  [31 : 0] vrb;
output [31 : 0] vrt;

wire   [31 : 0] vrt;
wire   [ 7 : 0] op0;
wire   [ 7 : 0] op1;
wire   [ 7 : 0] op2;
wire   [ 7 : 0] op3;

assign op0	= 	(vra[ 7: 0] + ~vrb[ 7: 0] + 1) & 8'hff;
assign op1	= 	(vra[15: 8] + ~vrb[15: 8] + 1) & 8'hff;
assign op2	= 	(vra[23:16] + ~vrb[23:16] + 1) & 8'hff;
assign op3	= 	(vra[31:24] + ~vrb[31:24] + 1) & 8'hff;
assign vrt	=	{op3, op2, op1, op0};

endmodule
