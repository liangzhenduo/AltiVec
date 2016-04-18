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

reg    [127 : 0] vrt;
reg              sat;
wire   [127 : 0] add;
wire   [127 : 0] sub;
wire   [127 : 0] avg;
wire   [127 : 0] cmp;
wire   [127 : 0] shift;
wire  sat0, sat1, sat2, sat3; 

vaddsws add0( .vra(vra[ 31:  0]), .vrb(vrb[ 31:  0]), .vrt(add[ 31:  0]), .sat(sat0) );
vaddsws add1( .vra(vra[ 63: 32]), .vrb(vrb[ 63: 32]), .vrt(add[ 63: 32]), .sat(sat1) );
vaddsws add2( .vra(vra[ 95: 64]), .vrb(vrb[ 95: 64]), .vrt(add[ 95: 64]), .sat(sat2) );
vaddsws add3( .vra(vra[127: 96]), .vrb(vrb[127: 96]), .vrt(add[127: 96]), .sat(sat3) );

vaddsws sub0( .vra(vra[ 31:  0]), .vrb(vrb[ 31:  0]), .vrt(sub[ 31:  0]) );
vaddsws sub1( .vra(vra[ 63: 32]), .vrb(vrb[ 63: 32]), .vrt(sub[ 63: 32]) );
vaddsws sub2( .vra(vra[ 95: 64]), .vrb(vrb[ 95: 64]), .vrt(sub[ 95: 64]) );
vaddsws sub3( .vra(vra[127: 96]), .vrb(vrb[127: 96]), .vrt(sub[127: 96]) );

vaddsws avg0( .vra(vra[ 31:  0]), .vrb(vrb[ 31:  0]), .vrt(avg[ 31:  0]) );
vaddsws avg1( .vra(vra[ 63: 32]), .vrb(vrb[ 63: 32]), .vrt(avg[ 63: 32]) );
vaddsws avg2( .vra(vra[ 95: 64]), .vrb(vrb[ 95: 64]), .vrt(avg[ 95: 64]) );
vaddsws avg3( .vra(vra[127: 96]), .vrb(vrb[127: 96]), .vrt(avg[127: 96]) );

vaddsws cmp0( .vra(vra[ 31:  0]), .vrb(vrb[ 31:  0]), .vrt(cmp[ 31:  0]) );
vaddsws cmp1( .vra(vra[ 63: 32]), .vrb(vrb[ 63: 32]), .vrt(cmp[ 63: 32]) );
vaddsws cmp2( .vra(vra[ 95: 64]), .vrb(vrb[ 95: 64]), .vrt(cmp[ 95: 64]) );
vaddsws cmp3( .vra(vra[127: 96]), .vrb(vrb[127: 96]), .vrt(cmp[127: 96]) );

vaddsws shift0( .vra(vra[ 31:  0]), .vrb(vrb[ 31:  0]), .vrt(shift[ 31:  0]) );
vaddsws shift1( .vra(vra[ 63: 32]), .vrb(vrb[ 63: 32]), .vrt(shift[ 63: 32]) );
vaddsws shift2( .vra(vra[ 95: 64]), .vrb(vrb[ 95: 64]), .vrt(shift[ 95: 64]) );
vaddsws shift3( .vra(vra[127: 96]), .vrb(vrb[127: 96]), .vrt(shift[127: 96]) );

initial 
begin
         if (ins == 8'b01110000) //vaddsws
    begin
        assign vrt = add;
        assign sat = sat0 | sat1 | sat2 | sat3;
    end

    else if (ins == 8'b10000000) //vsububm
        assign vrt = sub;

    else if (ins == 8'b10101001) //vavgsh
        assign vrt = avg;

    else if (ins == 8'b00001011) //vcmpequh
        assign vrt = cmp;

    else if (ins == 8'b00100010) //vslb
        assign vrt = shift;

end
endmodule
