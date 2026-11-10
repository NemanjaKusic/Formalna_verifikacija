clear -all
analyze -sv09 zad9_checker.sv bind.sv
analyze -vhdl2k zad9.vhd
# elaborate -top and_case
elaborate -vhdl -top zad9
clock clk
reset rst
prove -bg -all
