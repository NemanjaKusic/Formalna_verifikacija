clear -all
analyze -sv09 zad10_checker.sv bind.sv
analyze -vhdl2k zad10.vhd
# elaborate -top and_case
elaborate -vhdl -top zad10
clock clk
reset rst
prove -bg -all
