#!/bin/bash
iverilog -o vavgsh.vvp vavgsh_tb.v
./vavgsh.vvp
open -a Scansion vavgsh.vcd