`timescale 1ns/100ps
`include "vcmpequh.v"

module vcmpequh_tb;

reg		[31: 0]	vra;
reg		[31: 0] vrb;
wire	[31: 0] vrt;

initial
begin
	$dumpfile("vcmpequh.vcd");
    $dumpvars(0, vcmpequh_tb);
    assign vra={16'd00, 16'd11};
    assign vrb={16'd22, 16'd11};
	#100
    $finish;
end

vcmpequh cmp( .vra(vra), .vrb(vrb), .vrt(vrt) );

endmodule
