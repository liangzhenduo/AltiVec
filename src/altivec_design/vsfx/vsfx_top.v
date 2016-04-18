//===============================================================================
//  File Name       : vsfx_top.v
//  File Revision   : 2.0
//  Date            : 2015/4/7
//  Author          : wangjie
//  Email           : ycyquick@foxmail.com
//  ----------------------------------------------------------------------------
//  Description     : vsfx_Top module (for students)
//  Function        : vsfx top level
//  ----------------------------------------------------------------------------
// Copyright (c) 2015,Tianjin University.
//               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
// ==============================================================================

//===============================================================================
`include "vaddsws.v"
`include "vsububm.v"
`include "vavgsh.v"
`include "vcmpequh.v"
`include "vslb.v"

module vsfx_top(
                 clk,
                 en,
                 vra,
                 vrb,
                 ins,

                 vrt_en,
                 vrt,
                 sat,
                 cr6
                 );

//===============================================================================
// I/O declaration
//===============================================================================
input            clk;
input            en;    //0 = disable
                        //1 = enable
input  [127 : 0] vra;
input  [127 : 0] vrb;
input  [  7 : 0] ins;   //ins[21:25],ins[28:30] of the 32-bit ins
output           vrt_en;//enable signal of output operand
output [127 : 0] vrt;
output           sat;   //saturation bit of Vector Status and Control Register
output [  3 : 0] cr6;   //condition register field 6(bit [20:23] of [0:31])

//===============================================================================
// wire declaration
//===============================================================================

wire   [127 : 0] vrt;

     if (ins == 8'b01110000) //vaddsws
begin
    vaddsws add0( .vra(vra[ 31:  0]), .vrb(vrb[ 31:  0]), .vrt(vrt[ 31:  0]), .sat(sat) );
    vaddsws add1( .vra(vra[ 63: 32]), .vrb(vrb[ 63: 32]), .vrt(vrt[ 63: 32]), .sat(sat) );
    vaddsws add2( .vra(vra[ 95: 64]), .vrb(vrb[ 95: 64]), .vrt(vrt[ 95: 64]), .sat(sat) );
    vaddsws add3( .vra(vra[127: 96]), .vrb(vrb[127: 96]), .vrt(vrt[127: 96]), .sat(sat) );
end

else if (ins == 8'b10000000) //vsububm
begin
    vaddsws sub0( .vra(vra[ 31:  0]), .vrb(vrb[ 31:  0]), .vrt(vrt[ 31:  0]) );
    vaddsws sub1( .vra(vra[ 63: 32]), .vrb(vrb[ 63: 32]), .vrt(vrt[ 63: 32]) );
    vaddsws sub2( .vra(vra[ 95: 64]), .vrb(vrb[ 95: 64]), .vrt(vrt[ 95: 64]) );
    vaddsws sub3( .vra(vra[127: 96]), .vrb(vrb[127: 96]), .vrt(vrt[127: 96]) );
end

else if (ins == 8'b10101001) //vavgsh
begin
    vaddsws avg0( .vra(vra[ 31:  0]), .vrb(vrb[ 31:  0]), .vrt(vrt[ 31:  0]) );
    vaddsws avg1( .vra(vra[ 63: 32]), .vrb(vrb[ 63: 32]), .vrt(vrt[ 63: 32]) );
    vaddsws avg2( .vra(vra[ 95: 64]), .vrb(vrb[ 95: 64]), .vrt(vrt[ 95: 64]) );
    vaddsws avg3( .vra(vra[127: 96]), .vrb(vrb[127: 96]), .vrt(vrt[127: 96]) );
end

else if (ins == 8'b00001011) //vcmpequh
begin
    vaddsws cmp0( .vra(vra[ 31:  0]), .vrb(vrb[ 31:  0]), .vrt(vrt[ 31:  0]) );
    vaddsws cmp1( .vra(vra[ 63: 32]), .vrb(vrb[ 63: 32]), .vrt(vrt[ 63: 32]) );
    vaddsws cmp2( .vra(vra[ 95: 64]), .vrb(vrb[ 95: 64]), .vrt(vrt[ 95: 64]) );
    vaddsws cmp3( .vra(vra[127: 96]), .vrb(vrb[127: 96]), .vrt(vrt[127: 96]) );
end

else if (ins == 8'b00100010) //vslb
begin
    vaddsws shift0( .vra(vra[ 31:  0]), .vrb(vrb[ 31:  0]), .vrt(vrt[ 31:  0]) );
    vaddsws shift1( .vra(vra[ 63: 32]), .vrb(vrb[ 63: 32]), .vrt(vrt[ 63: 32]) );
    vaddsws shift2( .vra(vra[ 95: 64]), .vrb(vrb[ 95: 64]), .vrt(vrt[ 95: 64]) );
    vaddsws shift3( .vra(vra[127: 96]), .vrb(vrb[127: 96]), .vrt(vrt[127: 96]) );
end

endmodule
