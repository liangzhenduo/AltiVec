`timescale 1ns/100ps
`include "vaddsws.v"

module vaddsws_tb;

reg		[32: 0]	vra;
reg		[32: 0]	vrb;
wire	[31: 0]	vrt;
wire			sat;

initial
begin
	$dumpfile("vaddsws.vcd");
    $dumpvars(0, vaddsws_tb);
	assign vra=33'hffffffff;
	assign vrb=33'hffffffff;
	#100
    $finish;
end

vaddsws add( .vra(vra), .vrb(vrb), .vrt(vrt), .sat(sat) );

endmodule
