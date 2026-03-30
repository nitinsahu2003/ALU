`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 17:21:07
// Design Name: 
// Module Name: alu_tb
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


module alu(
        input [7:0] a,
        input [7:0] b,
        input [3:0] opcode,
        
        output reg[7:0] result,
        output reg carry, sign, zero, overflow
    );
    
    reg[8:0] temp;
    
    always @(*) begin
        
    // Default values
    temp = 0;
    result = 0;
    carry = 0;
    overflow = 0;
    case (opcode)
        4'b0000: begin // ADD
            temp = a + b;
            result = temp[7:0];
            carry = temp[8];
            overflow = (a[7] == b[7]) && (result[7] != a[7]);
        end

        4'b0001: begin // SUB
            temp = a - b;
            result = temp[7:0];
            carry = temp[8];
            overflow = (a[7] != b[7]) && (result[7] != a[7]);
        end
        
        4'b0010 : result = a & b; // AND
        4'b0011 : result = a | b; // OR
        4'b0100 : result = a ^ b; // XOR

        4'b0101 : result = a << 1; // Shift left
        4'b0110 : result = a >> 1; // Shift right
        
        4'b0111 : begin  // Increment
            temp = a + 1;
            result = temp[7:0];
            carry = temp[8];
        end

        4'b1000 : begin // Decrement
            temp = a - 1;
            result = temp[7:0];
            carry = temp[8];
        end

        4'b1001 : begin  // Compare
            if(a == b) result = 8'b00000000;
            else if(a > b) result = 8'b00000001;
            else result = 8'b11111111;
        end
        default : result = 8'b00000000; // Default case

    endcase

    zero = (result == 0);
    sign = result[7];
    end
endmodule
