#!/bin/bash
iverilog -o vslb.vvp vslb_tb.v
./vslb.vvp
open -a Scansion vslb.vcd