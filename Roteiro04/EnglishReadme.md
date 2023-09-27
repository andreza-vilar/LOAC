# 4-Bit Parallel/Serial Register


This is a project for a 4-bit register capable of storing data in parallel or serial fashion. The register is controlled by a clock signal (`clk`) and a reset signal (`reset`). Additionally, it has specific inputs and outputs for parallel and serial storage operations.

## Description of Inputs and Outputs

- **clk:** Clock signal to synchronize the register's operations.
- **reset:** Reset signal to reset the register to its initial state.
- **Serial Input Data (`Din_serie`):** Used when the selection (`SEL`) is configured as 1 (serial). This signal represents the data to be stored sequentially in the registers.
- **Selection Input (`SEL`):** Used to select the operation mode of the register.
  - When `SEL` is equal to 0, the register operates in parallel mode.
  - When `SEL` is equal to 1, the register operates in serial mode.
- **Parallel Input Data (`Din[3:0]` or `Din_3`, `Din_2`, `Din_1`, `Din_0`):** Used when the selection (`SEL`) is configured as 0 (parallel). These signals represent the data to be stored in the registers simultaneously.
- **Parallel Output Data (`Dout[3:0]` or `Dout_3`, `Dout_2`, `Dout_1`, `Dout_0`):** The output of the register in parallel mode. It reflects the data stored in the registers when the selection (`SEL`) is configured as 0 (parallel).

## Operation

The 4-bit register can operate in two different modes:

### Parallel Mode (SEL = 0)

In parallel mode, data is loaded into the registers simultaneously through the parallel input data lines (`Din[3:0]`). The parallel output data (`Dout[3:0]`) will reflect the data stored in the register after the appropriate clock edge.

### Serial Mode (SEL = 1)

In serial mode, data is loaded sequentially into the registers with each clock pulse, starting from the most significant bit and going to the least significant bit. The serial input data (`Din_serie`) is used to feed the data sequentially. The parallel output data (`Dout[3:0]`) will also reflect the data stored in the register after each clock pulse.

# Second Part of Assignment 04:

## Problem 1 – RAM R/W Memory

Building a 4x4 RAM R/W Memory, as described below:

### Inputs and Outputs

- **clk:** Clock signal to synchronize the memory operations.
- **Selection Input:** SEL = 0 for read ("R") and SEL = 1 for write ("W").
- **Input Data ("W"):** Din[3:0] to write data into the memory.
- **Addresses:** Addr[1:0] to select the memory location.
- **Output Data ("R"):** Dout[3:0] to read data from the memory.

## Problem 2 – ROM RAM Memory

Building a 4x4 ROM RAM Memory, as described below:

### Inputs and Outputs

- **Addresses:** Addr[1:0] to select the memory location.
- **Output Data:** Dout[3:0] containing the values 0100, 1100, 0110, and 0111, which are stored in the memory at addresses 0, 1, 2, and 3, respectively.
