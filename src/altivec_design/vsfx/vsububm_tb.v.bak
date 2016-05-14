`timescale 1ns/100ps

module vsububm_tb;

reg		[31: 0]	vra;
reg		[31: 0] vrb;
wire	[31: 0] vrt;

initial
begin
	$dumpfile("vsububm.vcd");
    $dumpvars(0, vsububm_tb);
    assign vrb	=	{8'h0, 8'h1, 8'h2, 8'h3};
    assign vra	=	{8'h4, 8'h4, 8'h4, 8'h4};
	#100
    $finish;
end

vsububm sub( .vra(vra), .vrb(vrb), .vrt(vrt) );

endmodule
