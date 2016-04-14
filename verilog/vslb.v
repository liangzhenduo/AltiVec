module vslb( vra, vrb, vrt );

input  	[31: 0] vra;
input  	[31: 0] vrb;
output 	[31: 0] vrt;

wire   	[31: 0] vrt;
wire	[15: 0]	res0;
wire	[15: 0]	res1;
wire	[15: 0]	res2;
wire	[15: 0]	res3;
wire	[31: 0]	sh;

assign sh	=	vrb & 32'b00000111000001110000011100000111;
assign res0	=	vra[ 7: 0] << sh[ 7: 0];
assign res1	=	vra[15: 8] << sh[15: 8];
assign res2	=	vra[23:16] << sh[23:16];
assign res3	=	vra[31:24] << sh[31:24];
assign vrt  =	{res3[ 7: 0], res2[ 7: 0], res1[ 7: 0], res0[ 7: 0]};

endmodule
