#!/bin/bash
iverilog -o vaddsws.vvp vaddsws_tb.v
./vaddsws.vvp
open -a Scansion vaddsws.vcd