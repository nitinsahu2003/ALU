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


module alu_tb;
        reg [7:0] a, b;
        reg [3:0] opcode;
        
        wire[7:0] result;
        wire carry, sign, zero, overflow;
     
    alu dut(
        .a(a),
        .b(b),
        .opcode(opcode),
        .result(result),
        .carry(carry),
        .zero(zero),
        .sign(sign),
        .overflow(overflow)
    );
    
    initial begin
        // Test ADD
        a = 10; b = 5; opcode = 4'b0000; #10;
        

        // Test SUB
         a = 10; b = 5; opcode = 4'b0001; #10;
        

        // Test AND
         a = 10; b = 5; opcode = 4'b0010; #10;
        

        // Test OR
         a = 10; b = 5; opcode = 4'b0011; #10;
        

        // Test XOR
         a = 10; b = 5; opcode = 4'b0100; #10;
        

        // Test Shift Left
        a = 10; opcode = 4'b0101; #10;
        

        // Test Shift Right
        a = 10; opcode = 4'b0110; #10;
        

        // Test Increment
        a = 10; opcode = 4'b0111; #10;
        

        // Test Decrement
        a = 10; opcode = 4'b1000; #10;
        

        // Test Compare
        a = 10; b = 10; opcode = 4'b1001; #10; // Expect result = 0
        a = 10; b = 5; opcode = 4'b1001; #10; // Expect result = 1
        a = 5; b = 10; opcode = 4'b1001; #10; // Expect result = 1

        $finish;
    end
endmodule
