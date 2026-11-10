clear -all
analyze -sv09 zad2_checker.sv bind.sv
analyze -vhdl2k zad2.vhd
# elaborate -top and_case
elaborate -vhdl -top zad2
clock clk
reset rst
prove -bg -all
