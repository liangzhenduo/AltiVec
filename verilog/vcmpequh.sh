#!/bin/bash
iverilog -o vcmpequh.vvp vcmpequh_tb.v
./vcmpequh.vvp
open -a Scansion vcmpequh.vcd