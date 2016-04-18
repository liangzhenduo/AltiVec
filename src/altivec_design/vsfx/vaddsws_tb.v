`timescale 1ns/100ps
`include "vaddsws.v"

module vaddsws_tb;

reg		[31: 0]	vra;
reg		[31: 0]	vrb;
wire	[31: 0]	vrt;
wire			sat;

initial
begin
	$dumpfile("vaddsws.vcd");
    $dumpvars(0, vaddsws_tb);
	assign vra=32'hffffffff;
	assign vrb=32'hffffffff;
	#100
	assign vra=32'h11111111;
	assign vrb=32'h22222222;
	#100
    $finish;
end

vaddsws add( .vra(vra), .vrb(vrb), .vrt(vrt), .sat(sat) );

endmodule
