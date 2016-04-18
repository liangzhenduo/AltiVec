`timescale 1ns/100ps

module vslb_tb;

reg		[31: 0]	vra;
reg		[31: 0] vrb;
wire	[31: 0] vrt;

initial
begin
	$dumpfile("vslb.vcd");
    $dumpvars(0, vslb_tb);
    assign vrb={8'd1, 8'd2, 8'd6, 8'd7};
    assign vra={8'b1, 8'b1, 8'b1, 8'b1};
	#100
    $finish;
end

vslb shift( .vra(vra), .vrb(vrb), .vrt(vrt) );

endmodule
