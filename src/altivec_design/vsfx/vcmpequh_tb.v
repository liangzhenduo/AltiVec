`timescale 1ns/100ps

module vcmpequh_tb;

reg		[31: 0]	vra;
reg		[31: 0] vrb;
wire	[31: 0] vrt;

initial
begin
  assign vra={16'h0000, 16'h0101};
  assign vrb={16'h0101, 16'h0101};
	#100
	assign vra={16'hffff, 16'h1111};
  assign vrb={16'hffff, 16'h1111};
	#100
	assign vra={16'h1010, 16'h1111};
  assign vrb={16'h1010, 16'h0000};
	#100
  $finish;
end

vcmpequh cmp( .vra(vra), .vrb(vrb), .vrt(vrt) );

endmodule
