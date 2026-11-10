clear -all
analyze -sv09 zad1_checker.sv bind.sv
analyze -vhdl2k zad1.vhd
# elaborate -top and_case
elaborate -vhdl -top zad1
clock clk
reset rst
prove -bg -all
