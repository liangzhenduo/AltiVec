`timescale 1ns/100ps

module vaddsws_tb;

reg		[31: 0]	vra;
reg		[31: 0]	vrb;
wire	[31: 0]	vrt;
wire			sat;

initial
begin
	assign vra=32'hffffffff;
	assign vrb=32'hffffffff;
	#100
	assign vra=32'h01010101;
	assign vrb=32'h10101010;
	#100
	assign vra=32'h89abcdef;
	assign vrb=32'hfedcba98;
	#100
  $finish;
end

vaddsws add( .vra(vra), .vrb(vrb), .vrt(vrt), .sat(sat) );

endmodule
