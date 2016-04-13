#!/bin/bash
iverilog -o vsububm.vvp vsububm_tb.v
./vsububm.vvp
open -a Scansion vsububm.vcd