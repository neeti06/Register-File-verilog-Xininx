# Register File (8×8) – Verilog HDL

## 📌 Project Overview
This project implements an **8×8 Register File** using **Verilog HDL**, designed and simulated using **Xilinx Vivado**.  
The register file supports **synchronous write** and **asynchronous read** operations.

This project was developed as a **minor RTL design project** without hardware implementation.

---

## ⚙️ Features
- 8 registers, each 8-bit wide
- Two read ports and one write port
- Synchronous write operation (clock-based)
- Asynchronous read operation
- Reset functionality
- Fully verified using a Verilog testbench

---

## 🧠 Design Specifications

| Parameter | Value |
|---------|------|
| Number of Registers | 8 |
| Data Width | 8-bit |
| Read Ports | 2 |
| Write Ports | 1 |
| Write Type | Synchronous |
| Read Type | Asynchronous |
| Tool Used | Xilinx Vivado |

---

## 📁 File Description
- `register_file_8x8.v` – RTL design of the register file  
- `tb_register_file_8x8.v` – Testbench for functional verification  
- `register_file_8x8.xpr` – Vivado project file  

---

## ▶️ Simulation
The design was simulated using **Vivado Simulator**.  
All read/write operations were verified successfully.

*(Add waveform screenshots in the `screenshots` folder)*

---

## 🚀 How to Run the Project
1. Open **Xilinx Vivado**
2. Load the `.xpr` project file
3. Set the testbench as the top module
4. Run behavioral simulation

---

## 📌 Learning Outcomes
- Understanding of register file architecture
- Practical experience with Verilog RTL coding
- Writing and validating testbenches
- Working with Vivado simulation flow

---

## 📜 License
This project is for educational purposes.
