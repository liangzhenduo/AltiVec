`timescale 1ns/100ps

module vslb_tb;

reg		[31: 0]	vra;
reg		[31: 0] vrb;
wire	[31: 0] vrt;

initial
begin
  assign vra={8'h1, 8'h1, 8'h1, 8'h1};
  assign vrb={8'h1, 8'h2, 8'h3, 8'h4};
	#100
	assign vra={8'hff, 8'hff, 8'hff, 8'hff};
  assign vrb={8'h8, 8'h7, 8'h6, 8'h5};
	#100
	assign vra={8'hf, 8'hf, 8'hf, 8'hf};
  assign vrb={8'h1, 8'h2, 8'h4, 8'h8};
	#100
  $finish;
end

vslb shift( .vra(vra), .vrb(vrb), .vrt(vrt) );

endmodule
