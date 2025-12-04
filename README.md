# 🚦 Four-Way Traffic Light Controller  
A fully working **four-way traffic signal controller** implemented in **Verilog (Vivado)** and also built using **real hardware (555 Timer + CD4017 Decade Counter)**.

This project demonstrates both **digital design** using HDL simulation and a **practical breadboard implementation** using discrete ICs.

---

## 🧠 Project Overview

This system controls traffic lights for **North–South** and **East–West** directions with realistic signaling:

- **Green → Yellow → Red** sequence  
- **All-Red clearance** state  
- Uses a **finite state machine (FSM)**  
- Simulated in **Vivado 2023.2**  
- Hardware built using **NE555 + CD4017**, LEDs and resistors  

---

## 📁 Repository Structure

---

## 💡 Verilog Implementation (Vivado)

The Verilog FSM includes states:

- `S_NS_GREEN`
- `S_NS_YELLOW`
- `S_ALL_RED_1`
- `S_EW_GREEN`
- `S_EW_YELLOW`
- `S_ALL_RED_2`

Each light output is encoded as:

| Value | Binary | Meaning |
|-------|---------|---------|
| `4` | `100` | GREEN |
| `2` | `010` | YELLOW |
| `1` | `001` | RED |

---

## 🔬 Simulation Screenshot  
Below is the waveform produced by Vivado showing correct FSM transitions:

![Simulation Waveform](simulation_waveform.png)

---

## 🔧 Hardware Implementation (Breadboard)

The hardware version uses:

- **NE555** → Clock generator  
- **CD4017** → Sequence generator  
- **LEDs + resistors** → Traffic lights  

Example output from real circuit:

*(Add your breadboard picture here)*  
`![Hardware Output](hardware_breadboard.png)`

---

## 🛠 Components Used

### Verilog Version:
- Vivado 2023.2
- Testbench & behavioral simulation

### Hardware Version:
- NE555 Timer IC  
- CD4017 Decade Counter  
- LEDs (Red, Yellow, Green)  
- 220Ω resistors  
- Breadboard + jumper wires  
- Optional: BC547 transistors for LED driving  

---

## ▶️ Running the Simulation in Vivado

1. Open Vivado → Create project  
2. Add `FWTS.v` and `tb_FWTS.v`  
3. Set `tb_FWTS.v` as **Simulation Top**  
4. Run **Behavioral Simulation**  
5. View waveform  
6. Confirm FSM timing + LED sequence  

---

## 📝 Future Improvements

- Add pedestrian signals  
- Add emergency vehicle override  
- Make timings real-time using clock divider  
- Implement 7-segment countdown timer  
- FPGA implementation using Basys 3 or Nexys A7  

---

## ✨ Author

**Phoenixfire-dark (Aaron George Roy)**  
Electronics & Communication Engineering (ECE)  

---

## 📜 License

This project is open-source under the **MIT License**.

