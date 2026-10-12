        .syntax unified
        .cpu cortex-m4
        .thumb

        .section .text
        .global main
        .type main, %function
        .thumb_func

main:
        mov     r0, #96         @ R0 = A (96)
        mov     r1, #28         @ R1 = B (28)

        add     r2, r0, r1      @ R2 = A + B (124)
        sub     r3, r0, r1      @ R3 = A - B (68)

stop:
        nop
        b       stop

.size main, .-main