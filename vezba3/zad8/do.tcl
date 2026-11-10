clear -all
analyze -sv09 zad8_checker.sv bind.sv
analyze -vhdl2k zad8.vhd
# elaborate -top and_case
elaborate -vhdl -top zad8
clock clk
reset rst
prove -bg -all
