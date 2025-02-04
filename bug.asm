```assembly
mov ax, 1000h ; Load a large value into AX
add ax, bx ; Add the value in BX to AX
```
This code snippet is prone to an uncommon error: **overflow**.  If the sum of the values in AX and BX exceeds FFFFh (65535), an overflow will occur, and the upper bits will be lost, resulting in an incorrect result.  This is an example of an arithmetic overflow bug that is often missed, especially in assembly where there isn't explicit overflow checking.