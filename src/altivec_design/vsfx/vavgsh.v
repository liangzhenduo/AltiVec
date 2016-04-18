module vavgsh( vra, vrb, vrt );

input  [31 : 0] vra;
input  [31 : 0] vrb;
output [31 : 0] vrt;

wire   [31 : 0] vrt;
wire   [15 : 0] op0;
wire   [15 : 0] op1;

assign op0	= 	((vra[15: 0] + vrb[15: 0] + 1) >> 1);
assign op1	= 	((vra[31:16] + vrb[31:16] + 1) >> 1);
assign vrt	=	{(vra[31]^vrb[31] ? ~op1[15] : op1[15]), op1[14:0], (vra[15]^vrb[15] ? ~op0[15] : op0[15]), op0[14:0]};            

endmodule
