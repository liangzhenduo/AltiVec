`timescale 1ns/100ps

module vsububm_tb;

reg		[31: 0]	vra;
reg		[31: 0] vrb;
wire	[31: 0] vrt;

initial
begin
	assign vra	=	{8'h0, 8'h1, 8'h2, 8'h3};
  assign vrb	=	{8'h4, 8'h4, 8'h4, 8'h4};
	#100
	assign vra	=	{8'hff, 8'h0, 8'hff, 8'h0};
  assign vrb	=	{8'h0, 8'hff, 8'h0, 8'hff};
	#100
	assign vra	=	{8'hfe, 8'hdc, 8'hba, 8'h98};
  assign vrb	=	{8'h01, 8'h23, 8'h45, 8'h67};
	#100
  $finish;
end

vsububm sub( .vra(vra), .vrb(vrb), .vrt(vrt) );

endmodule
