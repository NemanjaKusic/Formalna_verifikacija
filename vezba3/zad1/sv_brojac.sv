`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2026 08:44:08 PM
// Design Name: 
// Module Name: sv_brojac
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sv_brojac(
    input clk,
    input rst,
    output logic out
    );
    
        logic [1:0] count;
    
    always_ff @(posedge clk) begin
        if (rst) begin
            count <= 2'b00;
        end
        else if (count == 2'b11) begin
            count <= 2'b11;
        end
        else begin
            count <= count + 1;
        end
    end  
    
    always_comb begin
        if (count == 3) begin
            out = 1'b1;
        end
        else begin
            out = 1'b0;
        end
    end
endmodule
