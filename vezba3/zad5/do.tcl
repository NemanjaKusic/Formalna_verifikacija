clear -all
analyze -sv09 zad5_checker.sv bind.sv
analyze -vhdl2k zad5.vhd
# elaborate -top and_case
elaborate -vhdl -top zad5
clock clk
reset rst
prove -bg -all
