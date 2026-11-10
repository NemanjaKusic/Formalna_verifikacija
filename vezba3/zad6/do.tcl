clear -all
analyze -sv09 zad6_checker.sv bind.sv
analyze -vhdl2k zad6.vhd
# elaborate -top and_case
elaborate -vhdl -top zad6
clock clk
reset rst
prove -bg -all
