`timescale 1ns/100ps
`include "vsububm.v"

module vsububm_tb;

reg	vra;
reg	vrb;
wire	vrt;

initial
begin
	$dumpfile("vsububm.vcd");
    $dumpvars(0, vsububm_tb);
	vra=1;
	vrb=1;
	#100
    $finish;
end

vsububm sub( .vra(vra), .vrb(vrb), .vrt(vrt) );

endmodule
