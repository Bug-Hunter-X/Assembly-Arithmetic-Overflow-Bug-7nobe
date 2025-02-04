# Assembly Arithmetic Overflow Bug
This repository demonstrates a subtle arithmetic overflow bug in assembly language.  The bug involves adding two registers, where the sum exceeds the maximum representable value, leading to unexpected results.

The `bug.asm` file contains the erroneous code. The `bugSolution.asm` file provides a corrected version with overflow handling.

## Bug Description
The core issue lies in the lack of overflow handling. When adding two large registers, if their sum exceeds the maximum value for that register size, the result wraps around, leading to data loss and incorrect calculations. This is a common, yet easily overlooked, problem in assembly programming.  It's particularly insidious because it might only manifest under certain input conditions.

## Solution
The solution involves explicitly checking for potential overflow *before* performing the addition.  This ensures that if an overflow condition is detected, appropriate error handling or alternative actions can be taken.