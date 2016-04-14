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


endmodule
