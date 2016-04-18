module vaddsws( vra, vrb, vrt, sat );

input  [31 : 0] vra;
input  [31 : 0] vrb;
output [31 : 0] vrt;
output          sat;

wire   [31 : 0] sum;
wire   [31 : 0] vrt;
wire            sat;

assign {sat, sum}	= vra + vrb;
assign vrt			= (sat == 1'b1) ? 32'hffffffff : sum;

endmodule
