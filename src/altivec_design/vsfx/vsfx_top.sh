#!/bin/bash
iverilog -o vsfx_top.vvp vsfx_top_tb.v
./vsfx_top.vvp
open -a Scansion vsfx_top.vcd