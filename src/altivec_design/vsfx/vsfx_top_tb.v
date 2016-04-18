`timescale 1ns/100ps
`include "vsfx_top.v"

module vsfx_top_tb;

wire             clk;
wire             en;    //0 = disable
                        //1 = enable
reg		[127: 0] vra;
reg		[127: 0] vrb;
reg		[  7: 0] ins;
wire	[127: 0] vrt;
wire			 sat;
wire			 vrt_en;
wire	[  3: 0] cr6;

initial
begin
	$dumpfile("vsfx_top.vcd");
    $dumpvars(0, vsfx_top_tb);
    assign ins = 8'b01110000;
    assign vra = 128'b0;
    assign vrb = 128'hffffffff00000000ffffffff00000000;
	#100
    $finish;
end

vsfx_top top(   .clk(1'b1), 
				.en(1'b1), 
				.vra(vra), 
				.vrb(vrb), 
				.ins(ins), 
				.vrt_en(vrt_en), 
				.vrt(vrt), 
				.sat(sat),
				.cr6(cr6) );

endmodule
