`timescale 1ns/100ps
`include "vaddsws.v"

module vaddsws_tb;

reg	vra;
reg	vrb;
wire	vrt;
wire	sat;

initial
begin
	$dumpfile("vaddsws.vcd");
    $dumpvars(0, vaddsws_tb);
	vra=1;
	vrb=1;
	#100
    $finish;
end

vaddsws add( .vra(vra), .vrb(vrb), .vrt(vrt), .sat(sat) );

endmodule
