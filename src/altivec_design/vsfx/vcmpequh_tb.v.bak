`timescale 1ns/100ps

module vcmpequh_tb;

reg		[31: 0]	vra;
reg		[31: 0] vrb;
wire	[31: 0] vrt;

initial
begin
	$dumpfile("vcmpequh.vcd");
    $dumpvars(0, vcmpequh_tb);
    assign vra={16'h0000, 16'h0101};
    assign vrb={16'h0101, 16'h0101};
	#100
    $finish;
end

vcmpequh cmp( .vra(vra), .vrb(vrb), .vrt(vrt) );

endmodule
