.globl main
.text

// program start
main:
    addi a0, a0, 5
    jal faculty
    ebreak


// in:
//    a0: n
// out:
//    a0: result
faculty:
    beqz a0, done

    addi sp, sp, -16
    sw ra, 0(sp)
    sw a0, 4(sp)

    addi a0, a0, -1
    jal faculty

    lw t0, 4(sp)
    mul a0, a0, t0

    lw ra, 0(sp)
    addi sp, sp, 16
    ret

    done:
        addi a0, zero, 1
        ret