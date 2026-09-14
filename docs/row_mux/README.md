## Row Multiplexer
A clock-synchronous 5:17 de-multiplexer that gives:

- No row activated if A[4:0] = 0b00000
- A single row activated for other values of A

The multiplexer is implemented in Verilog.

### Timing Diagram
Timing diagram to visualize functionality.

![Timing Diagram](../../xschem/docs/tb_row_mux_timing.png)