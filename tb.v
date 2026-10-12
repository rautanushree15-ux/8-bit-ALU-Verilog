`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 20:35:44
// Design Name: 
// Module Name: tb
// Project Name: 

module top_tb;

    reg [7:0] A;
    reg [7:0] B;
    reg [3:0] sel;
    wire [7:0] Y;

    // Instantiate the ALU
    top uut (
        .A(A),
        .B(B),
        .sel(sel),
        .Y(Y)
    );

    initial begin

        // Test inputs
        A = 8'd10;
        B = 8'd3;

        sel = 4'b0000; #10; // Addition
        sel = 4'b0001; #10; // Subtraction
        sel = 4'b0010; #10; // Increment A
        sel = 4'b0011; #10; // Decrement A

        sel = 4'b0100; #10; // AND
        sel = 4'b0101; #10; // OR
        sel = 4'b0110; #10; // XOR
        sel = 4'b0111; #10; // NOR

        sel = 4'b1000; #10; // Left shift
        sel = 4'b1001; #10; // Right shift

        sel = 4'b1010; #10; // Equal comparison
        sel = 4'b1011; #10; // Greater-than comparison
        sel = 4'b1100; #10; // Less-than comparison

        sel = 4'b1101; #10; // Pass A
        sel = 4'b1110; #10; // Pass B
        sel = 4'b1111; #10; // Clear output

        // Test equality when A = B
        A = 8'd5;
        B = 8'd5;
        sel = 4'b1010; #10;

        // Test completion
        $finish;
    end

endmodule

