clear -all
analyze -sv09 zad4_checker.sv bind.sv
analyze -vhdl2k zad4.vhd
# elaborate -top and_case
elaborate -vhdl -top zad4
clock clk
reset rst
prove -bg -all
