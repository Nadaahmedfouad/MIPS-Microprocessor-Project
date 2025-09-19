# ⚙️ MIPS Microprocessor (VHDL – Xilinx ISE)

## 📌 Project Idea
This project implements a simplified **MIPS microprocessor** using **VHDL**.  
It was developed to understand the design of a pipelined RISC CPU, the integration of datapath and control units, and how instructions are executed at the hardware level.

The design follows the classic **5-stage pipeline architecture**:
1. **Instruction Fetch (IF)**
2. **Instruction Decode (ID)**
3. **Execute (EX)**
4. **Memory Access (MEM)**
5. **Write Back (WB)**

---

## ✨ Features
- **Instruction Set Support**
  - Arithmetic & Logic: `ADD`, `SUB`, `AND`, `OR`, `SLT`
  - Data Transfer: `LW`, `SW`
  - Control: `BEQ`, `JUMP`
- **Pipeline Support**
  - Sequential instruction execution
  - Basic hazard handling
- **Modular Design**
  - ALU, Adder, Register File, Control Unit, Memory
- **Simulation**
  - Tested using **Xilinx ISim**
  - Outputs verified for ALU operations, memory reads/writes, and control signals

---

## 🛠️ Tools & Technologies
- **Language**: VHDL  
- **IDE / Tools**: Xilinx ISE Design Suite 14.x  
- **Simulator**: ISim (Xilinx)  
- **Target Platform**: FPGA (Xilinx Spartan-3/Spartan-6 or similar)

---

