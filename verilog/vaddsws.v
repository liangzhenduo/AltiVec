module vaddsws( vra, vrb, vrt, sat );

input  [31 : 0] vra;
input  [31 : 0] vrb;
output [31 : 0] vrt;
output          sat;

wire   [31 : 0] sum;
wire             co;
wire   [31 : 0] vrt;
wire            sat;

assign {co,sum}              = vra + vrb;
assign {sat, vrt[31 : 0]}    = (co == 1'b1) ? {1'b1, 32'hffff_ffff} : {1'b0, sum};

endmodule
