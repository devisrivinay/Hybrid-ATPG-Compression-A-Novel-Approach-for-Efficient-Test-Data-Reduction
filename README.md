# Hybrid ATPG Compression (Verilog Implementation)

This project implements a **Hybrid ATPG Compression Algorithm** using:
- X-Filling Optimization
- Dictionary-Based Encoding
- Run-Length Encoding (RLE)

## Tools
- Xilinx Vivado (Simulation + Synthesis)

## Files
- `x_filling_optimization.v` – Module for don’t-care (X) bit optimization
- `dictionary_encoding.v` – Module for dictionary-based compression
- `run_length_encoding.v` – Module for run-length encoding
- `hybrid_atpg_compression.v` – Top-level integration module
- `testbench.v` – Testbench for simulation

## Usage
1. Open Vivado.
2. Add all Verilog files as sources.
3. Add `testbench.v` as simulation source.
4. Run simulation (XSim).
5. Observe outputs: `compressed_pattern` & `run_length`.

## Author
Palle Devi Sri Vinay Mohan Reddy
palle.devisrivinay@gmail.com
