# 8-Bit ALU Design Using Verilog HDL

## Overview
This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL in AMD Xilinx Vivado. The ALU performs 16 arithmetic, logical, shift, comparison, and data-transfer operations selected using a 4-bit control signal.

## Features
- 8-bit inputs: A and B
- 4-bit operation selector: `sel`
- 8-bit output: Y
- Combinational logic design
- Behavioral simulation, synthesis, and implementation in Vivado

## Operations

| Selector | Operation |
|---|---|
| `0000` | Addition |
| `0001` | Subtraction |
| `0010` | Increment A |
| `0011` | Decrement A |
| `0100` | Bitwise AND |
| `0101` | Bitwise OR |
| `0110` | Bitwise XOR |
| `0111` | Bitwise NOR |
| `1000` | Logical left shift |
| `1001` | Logical right shift |
| `1010` | Equal comparison |
| `1011` | Greater-than comparison |
| `1100` | Less-than comparison |
| `1101` | Pass A |
| `1110` | Pass B |
| `1111` | Clear output |

## Tools Used
- Verilog HDL
- AMD Xilinx Vivado

## Project Files
- `top.v` — ALU RTL design
- `tb.v` — Verilog testbench

## Verification
The design was tested using behavioral simulation. All 16 operations were checked against their expected outputs. Synthesis and implementation were also completed in Vivado.

## Future Improvements
- Add automated self-checking testbench assertions.
- Add FPGA pin constraints and test on physical FPGA hardware.

## Author
Anushree Raut
