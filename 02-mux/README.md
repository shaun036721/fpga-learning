# 2-to-1 Multiplexer (SystemVerilog)

## Overview

This project implements a 2-to-1 multiplexer (MUX) using SystemVerilog. The design was simulated, verified using a testbench, synthesized, and implemented on a physical FPGA.

The purpose of this project was to gain hands-on experience with digital logic design, HDL development, functional verification, and FPGA programming.

## How It Works

A 2-to-1 multiplexer selects one of two input signals based on a single select signal.

The multiplexer has:
- `data_a` — First data input
- `data_b` — Second data input
- `sel` — Select signal
- `mux_out` — Output signal

The output follows the equation:

**mux_out = (~sel & data_a) | (sel & data_b)**

### Truth Table

| sel | data_a | data_b | mux_out |
|-----|--------|--------|---------|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 1 |

## Tools & Technologies

- SystemVerilog
- Xilinx Vivado
- FPGA Development Board
- Vivado Simulator
- Git & GitHub

## Design & Implementation

The multiplexer was implemented using combinational logic in SystemVerilog.

The development process consisted of:

1. Writing the RTL design.
2. Creating a SystemVerilog testbench.
3. Running behavioral simulations in Vivado.
4. Verifying the output against the expected truth table.
5. Running synthesis and implementation.
6. Generating a bitstream.
7. Programming the FPGA.
8. Testing the design using physical switches and LEDs.

## Simulation & Verification

A SystemVerilog testbench was developed to verify the functionality of the multiplexer.

All eight possible combinations of the three input signals were tested.

The simulation confirmed that:
- When `sel = 0`, the output follows `data_a`.
- When `sel = 1`, the output follows `data_b`.

### Simulation Waveform

*Insert simulation screenshot here.*

## FPGA Hardware Testing

After successful simulation, the design was programmed onto the FPGA.

Physical switches were used to control the data inputs and select signal, while an LED displayed the multiplexer output.

All eight input combinations were tested to verify correct operation on hardware.

## What I Learned

Through this project, I gained experience with:

- Writing combinational logic in SystemVerilog.
- Creating testbenches for functional verification.
- Understanding multiplexer operation and truth tables.
- Using Vivado for simulation, synthesis, and implementation.
- Assigning FPGA input/output pins.
- Generating bitstreams and programming an FPGA.
- Verifying digital designs on physical hardware.

## Conclusion

This project provided practical experience with the complete FPGA design workflow, from RTL development to physical hardware verification.

It serves as a foundation for more advanced digital logic and FPGA projects.
