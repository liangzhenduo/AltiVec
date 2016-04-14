`timescale 1ns/100ps
`include "vavgsh.v"

module vavgsh_tb;

reg		[31: 0]	vra;
reg		[31: 0] vrb;
wire	[31: 0] vrt;

initial
begin
	$dumpfile("vavgsh.vcd");
    $dumpvars(0, vavgsh_tb);
    assign vra={16'h7fff, 16'h0001};
    assign vrb={16'h0001, 16'h7ffe};
	#100
    $finish;
end

vavgsh avg( .vra(vra), .vrb(vrb), .vrt(vrt) );

endmodule
