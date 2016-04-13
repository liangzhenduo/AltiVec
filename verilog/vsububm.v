module vsububm( vra, vrb, vrt );

input  [31 : 0] vra;
input  [31 : 0] vrb;
output [31 : 0] vrt;

wire   [31 : 0] vrt;

//assign opa                  = {vra[31:24], vra[23:16], vra[15: 8], vra[ 7: 0]};
//assign opb                  = {vrb[31:24], vrb[23:16], vrb[15: 8], vrb[ 7: 0]};
assign vrt                  = {vra[31:24]-vra[31:24], vra[23:16]-vra[23:16], vra[15: 8]-vra[15: 8], vra[ 7: 0]-vra[ 7: 0]};

endmodule
