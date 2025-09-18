`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2025 19:06:57
// Design Name: 
// Module Name: dictionary_encoding
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


module dictionary_encoding(
input [8:0] pattern,  // 9-bit ATPG pattern
    output reg [3:0] code // Compressed 4-bit code
    );
    always @(*) begin
        case(pattern)
            9'b110001010: code = 4'b0001; // A
            9'b110001011: code = 4'b0010; // B
            9'b000110111: code = 4'b0011; // C
            default: code = 4'b1111; // Undefined
        endcase
    end
endmodule
