`timescale 1ns/100ps

module vavgsh_tb;

reg		[31: 0]	vra;
reg		[31: 0] vrb;
wire	[31: 0] vrt;

initial
begin
  assign vra={16'h7fff, 16'h0001};
  assign vrb={16'h0001, 16'h7ffe};
	#100
	assign vra={16'h0001, 16'h0001};
  assign vrb={16'hfedc, 16'hba98};
	#100
	assign vra={16'hffff, 16'h8000};
  assign vrb={16'h0123, 16'h4567};
	#100
  $finish;
end

vavgsh avg( .vra(vra), .vrb(vrb), .vrt(vrt) );

endmodule
