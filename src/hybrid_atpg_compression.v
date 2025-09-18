`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2025 19:16:10
// Design Name: 
// Module Name: hybrid_atpg_compression
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


module hybrid_atpg_compression(
input clk,
    input reset,
    input [8:0] atpg_pattern, // Original test pattern
    output [3:0] compressed_pattern,
    output [3:0] run_length
    );
    wire [8:0] optimized_pattern;
    wire [3:0] encoded_pattern;
    
    x_filling_optimization x_fill (
        .pattern(atpg_pattern),
        .optimized_pattern(optimized_pattern)
    );

    dictionary_encoding dict_enc (
        .pattern(optimized_pattern),
        .code(encoded_pattern)
    );

    run_length_encoding rle (
        .clk(clk),
        .reset(reset),
        .code(encoded_pattern),
        .run_length(run_length),
        .encoded_out(compressed_pattern)
    );
endmodule
