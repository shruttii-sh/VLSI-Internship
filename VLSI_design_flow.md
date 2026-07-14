# VLSI Design Flow

VLSI (Very Large Scale Integration) is the process of designing integrated circuits containing millions or billions of transistors on a single chip.

## Steps in the VLSI Design Flow

### 1. System Specification
The design requirements are defined, including functionality, performance, power consumption, area, and cost.

### 2. Architecture Design
The overall system is divided into functional modules and the interaction between them is planned.

### 3. RTL Design
The hardware is described using Hardware Description Languages (HDLs) such as Verilog or VHDL.

### 4. Functional Verification
Simulation is performed to verify that the RTL design behaves according to the specifications.

### 5. Logic Synthesis
The RTL code is converted into a gate-level netlist using synthesis tools.

### 6. Physical Design
The synthesized netlist is transformed into an actual chip layout through:
- Floorplanning
- Placement
- Clock Tree Synthesis (CTS)
- Routing

### 7. Sign-off
Design Rule Check (DRC), Layout vs Schematic (LVS), Static Timing Analysis (STA), and power analysis are performed before fabrication.

### 8. Fabrication
The verified layout is sent to a semiconductor foundry for chip manufacturing.

### 9. Testing & Packaging
The fabricated chip is tested, packaged, and prepared for deployment.
