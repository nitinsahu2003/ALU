# 🔢 Arithmetic Logic Unit (ALU) – Verilog Design

## 📌 Overview

This project implements an **Arithmetic Logic Unit (ALU)** using **Verilog HDL**.
The ALU performs a variety of arithmetic and logical operations based on the control signal input.

It is designed and simulated using **Xilinx Vivado**, making it suitable for learning digital design and VLSI fundamentals.

---

## ⚙️ Features

* Performs multiple arithmetic operations:

  * Addition
  * Subtraction
* Performs logical operations:

  * AND
  * OR
  * XOR
  * NOT
* Performs operations such as shift left, shift right, increment, decrement and compare   
* Supports multi-bit inputs (customizable)
* Designed using **modular and synthesizable Verilog code**
* Includes **testbench for simulation verification**

---

## 🧠 Working Principle

The ALU takes two input operands and a control signal (`sel`) to determine which operation to perform.

Based on the value of `sel`, the ALU selects the corresponding arithmetic or logic operation and produces the output.

---

## 🧾 Truth Table (Example)

| Sel  | Operation   |
| ---  | ----------- |
| 0000 | Addition    |
| 0001 | Subtraction |
| 0010 | AND         |
| 0011 | OR          |
| 0100 | XOR         |
| 0101 | Shift left  |
| 0110 | Shift right |
| 0111 | Increment   |
| 1000 | Decrement   |
| 1001 | Compare     |

> You can modify operations depending on your design.

---

## 🏗️ Project Structure

```
ALU/
│
├── alu.v              # Main ALU module
├── alu_tb.v           # Testbench file
├── waveform.png       # Simulation output waveform
├── circuit.png        # Circuit diagram (to be added)
├── README.md
```


## 💡 Applications

* Used in CPUs and processors
* Fundamental block in digital systems
* Useful for learning **computer architecture & VLSI design**

---

## 🛠️ Tools Used

* Verilog HDL
* Xilinx Vivado

---

## 🙌 Author

* Nitin

---

## ⭐ Future Improvements

* Add more operations
* Parameterized bit-width ALU
* FPGA implementation

---


