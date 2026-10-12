`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 20:05:48
// Design Name: 
// Module Name: top


module top(
    input [7:0] A,
    input [7:0] B,
    input [3:0] sel,
    output reg [7:0] Y
    );
    
always @(*) begin
case(sel)

  4'b0000: Y = A + B;  //Addition
  4'b0001: Y = A - B;  //Substraction
  4'b0010: Y = A + 1;  //Increment
  4'b0011: Y = A - 1;  //Decrement
  
  4'b0100: Y = A & B;  //AND
  4'b0101: Y = A | B;  //OR
  4'b0110: Y = A ^ B;  //Xor
  4'b0111: Y = ~(A | B);  //Nor
  
  4'b1000: Y = A << 1;  //Logical left shift
  4'b1001: Y = A >> 1;  //logical right shift
  4'b1010: Y = (A == B); //equal comparison
  4'b1011: Y = (A > B);  //greater than
  4'b1100: Y = (A < B);  //less than
  4'b1101: Y =  A;  //Pass A
  4'b1110: Y = B;   //Pass B
  4'b1111: Y = 8'b00000000; //clear output
  
  default: Y = 8'b00000000;
  
  endcase
 end  
endmodule
