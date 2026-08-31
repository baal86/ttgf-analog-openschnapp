<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

A classic 3T CMOS image sensor. Diode performance will be poor, but hopefully the readout can be demonstrated.

## How to test

For simple uncorrelated readout:

- Pulse reset high to reset the array
- Wait for your desired integration time
- Read out the image sensor:
    - Address the pixel by row and column number.
    - After settling (~100us), sample the analog output.

## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
