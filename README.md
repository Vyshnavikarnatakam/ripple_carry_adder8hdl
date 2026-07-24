# 8-Bit Ripple Carry Adder (HDL)

A hardware description language (HDL) implementation and simulation of a structural 8-Bit Ripple Carry Adder circuit. This digital system design project chains eight 1-bit Full Adders together in series to compute arithmetic addition for two 8-bit binary integers.

## 📌 Project Overview
The 8-Bit Ripple Carry Adder takes two 8-bit inputs (A and B) along with an initial carry-in (\(C_{in}\)). The carry bit propagates ("ripples") through each individual full adder stage from the Least Significant Bit (LSB) up to the Most Significant Bit (MSB), producing a final 8-bit Sum (S) and a single-bit final Carry-out (\(C_{out}\)).

---
 
 ## 🛠️ Architecture Design
The architecture is built hierarchically using structural modeling:
1. *Low-Level Module:* A standard 1-Bit Full Adder logic block.
2. *Top-Level Module:* Connects eight 1-bit full adder instances together, mapping the internal carry wires sequentially (C1 through C7) across the layout matrix.

### Block Diagram Concept:
text
          Cin ──► [FA 0] ──► C1 ──► [FA 1] ──► C2 ──► ... ──► C7 ──► [FA 7] ──► Cout
                    │                 │                                │
                 A0, B0            A1, B1                           A7, B7
                    │                 │                                │
                    ▼                 ▼                                ▼
                   S0                S1                               S7


---

## 💻 Hardware Specifications
* *Inputs:*
  * A [7:0]: 8-bit binary addend vector
  * B [7:0]: 8-bit binary addend vector
  * Cin: 1-bit incoming carry bit
* *Outputs:*
  * Sum [7:0]: 8-bit binary sum vector
  * Cout: 1-bit final overflow carry-out bit

---

## 🧪 Simulation and Verification
The system functionality is verified via an automated testbench script evaluating:
* Baseline standard arithmetic addition cases (e.g., $5 + 3 = 8$).
* Boundary corner cases (adding zeros, adding maximum values 255 + 255).
* Proper execution of the sequential propagation delays and carry-out generation checks.

---

## ⚡ Advantages & Limitations
* *Advantages:* Straightforward layout structure, intuitive hardware modularity, and easy scalability to higher bit dimensions ($16, 32, 64\text{-bit}$).
* *Limitations:* Linear propagation gate delay proportional to the circuit width ($O(N)$ timeline lag), making it slower compared to modern parallel architectures like Carry Look-Ahead Adders (CLA).
*
