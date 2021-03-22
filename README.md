# PulseController

Used as a kill switch for an autonomous RC car.

* 5 physical PWM inputs
    * a0: linear
    * a1: linear
    * a2: on/off, multiplexer input
    * a3: on/off
    * a4: on/off
* 2 virtual PWM inputs via I2C
    * b0: linear
    * b1: linear
* 2 physical PWM outputs
    * y0: linear, adopts frequency of a0
    * y1: linear, adopts frequency of a1
    * Outputs are multiplexed between a* and b* channels
* I2C address 0x09 (100kHz)
    * Reads provide pulse widths of virtual PWM inputs
    * Writes supply pulse widths of PWM outputs
    * Pulse widths are measured in 3.02MHz clock cycles

Design is targeted at TinyFPGA AX2, which uses the Lattice LCMXO2-1200HC.
