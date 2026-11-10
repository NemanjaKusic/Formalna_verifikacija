clear -all
analyze -sv09 zad7_checker.sv bind.sv
analyze -vhdl2k zad7.vhd
# elaborate -top and_case
elaborate -vhdl -top zad7
clock clk
reset rst
prove -bg -all
