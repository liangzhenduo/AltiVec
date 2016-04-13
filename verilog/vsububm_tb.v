`timescale 1ns/100ps
`include "vsububm.v"

module vsububm_tb;

reg		[31: 0]	vra;
reg		[31: 0] vrb;
wire	[31: 0] vrt;

initial
begin
	$dumpfile("vsububm.vcd");
    $dumpvars(0, vsububm_tb);
    assign vra={8'h00, 8'h11, 8'h22, 8'h33};
    assign vrb={8'h33, 8'h22, 8'h11, 8'h00};
	#100
    $finish;
end

vsububm sub( .vra(vra), .vrb(vrb), .vrt(vrt) );

endmodule
