clear -all
analyze -sv09 zad3_checker.sv bind.sv
analyze -vhdl2k zad3.vhd
# elaborate -top and_case
elaborate -vhdl -top zad3
clock clk
reset rst
prove -bg -all
