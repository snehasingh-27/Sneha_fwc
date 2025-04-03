.section .data
    nand_msg:      .asciz "NAND Latch Analysis:\n"
    nand_msg_len:  .quad . - nand_msg
    nor_msg:       .asciz "NOR Latch Analysis:\n"
    nor_msg_len:   .quad . - nor_msg
    final_msg:     .asciz "Final Answer:\n"
    final_msg_len: .quad . - final_msg
    nand_input1:   .asciz "Inputs (0, 1): Q1 = "
    nand_input1_len: .quad . - nand_input1
    nand_input2:   .asciz "Inputs (1, 1): Q1 = "
    nand_input2_len: .quad . - nand_input2
    nor_input1:    .asciz "Inputs (0, 1): Q1 = "
    nor_input1_len: .quad . - nor_input1
    nor_input2:    .asciz "Inputs (1, 1): Q1 = "
    nor_input2_len: .quad . - nor_input2
    value_0:       .asciz "0"
    value_1:       .asciz "1"
    comma_space:   .asciz ", Q2 = "
    comma_space_len: .quad . - comma_space
    newline:       .asciz "\n"
    final_answer:  .asciz "- NAND latch: First (1, 0), then (1, 0)\n- NOR latch: First (0, 0), then (0, 0)\nCorrect Option: (C)\n"
    final_answer_len: .quad . - final_answer

.section .bss
    .lcomm nand_q1, 1
    .lcomm nand_q2, 1
    .lcomm nor_q1, 1
    .lcomm nor_q2, 1

.section .text
    .global _start

_start:
    // Initialize latch states
    mov w0, #1
    ldr x1, =nand_q1
    strb w0, [x1]
    
    mov w0, #0
    ldr x1, =nand_q2
    strb w0, [x1]
    
    mov w0, #0
    ldr x1, =nor_q1
    strb w0, [x1]
    
    mov w0, #0
    ldr x1, =nor_q2
    strb w0, [x1]

    // Print NAND message
    mov x0, 1
    ldr x1, =nand_msg
    ldr x2, =nand_msg_len
    mov x8, 64         // write syscall number
    svc 0

    // Step 1: NAND Inputs (0, 1)
    // Print NAND inputs (0, 1)
    mov x0, 1
    ldr x1, =nand_input1
    ldr x2, =nand_input1_len
    mov x8, 64
    svc 0

    // Print NAND Q1 value (which is 1)
    mov x0, 1
    ldr x1, =value_1
    mov x2, 1
    mov x8, 64
    svc 0

    // Print comma and space
    mov x0, 1
    ldr x1, =comma_space
    ldr x2, =comma_space_len
    mov x8, 64
    svc 0

    // Print NAND Q2 value (which is 0)
    mov x0, 1
    ldr x1, =value_0
    mov x2, 1
    mov x8, 64
    svc 0

    // Print newline
    mov x0, 1
    ldr x1, =newline
    mov x2, 1
    mov x8, 64
    svc 0

    // Step 2: NAND Inputs (1, 1)
    // Print NAND inputs (1, 1)
    mov x0, 1
    ldr x1, =nand_input2
    ldr x2, =nand_input2_len
    mov x8, 64
    svc 0

    // Print NAND Q1 value (which is 1)
    mov x0, 1
    ldr x1, =value_1
    mov x2, 1
    mov x8, 64
    svc 0

    // Print comma and space
    mov x0, 1
    ldr x1, =comma_space
    ldr x2, =comma_space_len
    mov x8, 64
    svc 0

    // Print NAND Q2 value (which is 0)
    mov x0, 1
    ldr x1, =value_0
    mov x2, 1
    mov x8, 64
    svc 0

    // Print newline
    mov x0, 1
    ldr x1, =newline
    mov x2, 1
    mov x8, 64
    svc 0

    // NOR Latch Analysis
    mov x0, 1
    ldr x1, =nor_msg
    ldr x2, =nor_msg_len
    mov x8, 64
    svc 0

    // Step 1: NOR Inputs (0, 1)
    // Print NOR inputs (0, 1)
    mov x0, 1
    ldr x1, =nor_input1
    ldr x2, =nor_input1_len
    mov x8, 64
    svc 0

    // Print NOR Q1 value (which is 0)
    mov x0, 1
    ldr x1, =value_0
    mov x2, 1
    mov x8, 64
    svc 0

    // Print comma and space
    mov x0, 1
    ldr x1, =comma_space
    ldr x2, =comma_space_len
    mov x8, 64
    svc 0

    // Print NOR Q2 value (which is 0)
    mov x0, 1
    ldr x1, =value_0
    mov x2, 1
    mov x8, 64
    svc 0

    // Print newline
    mov x0, 1
    ldr x1, =newline
    mov x2, 1
    mov x8, 64
    svc 0

    // Step 2: NOR Inputs (1, 1)
    // Print NOR inputs (1, 1)
    mov x0, 1
    ldr x1, =nor_input2
    ldr x2, =nor_input2_len
    mov x8, 64
    svc 0

    // Print NOR Q1 value (which is 0)
    mov x0, 1
    ldr x1, =value_0
    mov x2, 1
    mov x8, 64
    svc 0

    // Print comma and space
    mov x0, 1
    ldr x1, =comma_space
    ldr x2, =comma_space_len
    mov x8, 64
    svc 0

    // Print NOR Q2 value (which is 0)
    mov x0, 1
    ldr x1, =value_0
    mov x2, 1
    mov x8, 64
    svc 0

    // Print newline
    mov x0, 1
    ldr x1, =newline
    mov x2, 1
    mov x8, 64
    svc 0

    // Final Answer
    mov x0, 1
    ldr x1, =final_msg
    ldr x2, =final_msg_len
    mov x8, 64
    svc 0

    mov x0, 1
    ldr x1, =final_answer
    ldr x2, =final_answer_len
    mov x8, 64
    svc 0

    // Exit
    mov x0, 0
    mov x8, 93
    svc 0
