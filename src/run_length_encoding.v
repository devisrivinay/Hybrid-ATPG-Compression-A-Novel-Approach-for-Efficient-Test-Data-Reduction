`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2025 19:09:21
// Design Name: 
// Module Name: run_length_encoding
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


module run_length_encoding(
input clk,
    input reset,
    input [3:0] code,       // Encoded pattern
    output reg [3:0] run_length, // Count of consecutive occurrences
    output reg [3:0] encoded_out // Output compressed data
    );
    reg [3:0] prev_code;
    reg [3:0] count;
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            prev_code <= 4'b0000;
            count <= 4'b0000;
        end
        else begin
            if (code == prev_code) begin
                count <= count + 1;
            end else begin
                run_length <= count;
                encoded_out <= prev_code;
                count <= 1;
                prev_code <= code;
            end
        end
    end
endmodule
