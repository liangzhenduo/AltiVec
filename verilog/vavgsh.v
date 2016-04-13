module vavgsh( vra, vrb, vrt );

input  [31 : 0] vra;
input  [31 : 0] vrb;
output [31 : 0] vrt;

wire   [31 : 0] vrt;

assign opa                  = {vra[31:16], vra[15: 0]};
assign opb                  = {vrb[31:16], vrb[15: 0]};
assign vrt                  = opa - opb;

endmodule
