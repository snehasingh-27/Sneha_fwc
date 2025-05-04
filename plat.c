#include <stdio.h>

int main() {
    // Data section
    const char *nand_msg = "NAND Latch Analysis:\n";
    const char *nor_msg = "NOR Latch Analysis:\n";
    const char *final_msg = "Final Answer:\n";
    const char *nand_input1 = "Inputs (0, 1): Q1 = ";
    const char *nand_input2 = "Inputs (1, 1): Q1 = ";
    const char *nor_input1 = "Inputs (0, 1): Q1 = ";
    const char *nor_input2 = "Inputs (1, 1): Q1 = ";
    const char *value_0 = "0";
    const char *value_1 = "1";
    const char *comma_space = ", Q2 = ";
    const char *newline = "\n";
    const char *final_answer = "- NAND latch: First (1, 0), then (1, 0)\n- NOR latch: First (0, 0), then (0, 0)\nCorrect Option: (C)\n";

    // BSS section
    unsigned char nand_q1 = 1; // Initialize NAND Q1 to 1
    unsigned char nand_q2 = 0; // Initialize NAND Q2 to 0
    unsigned char nor_q1 = 0;   // Initialize NOR Q1 to 0
    unsigned char nor_q2 = 0;   // Initialize NOR Q2 to 0

    // Print NAND message
    printf("%s", nand_msg);

    // Step 1: NAND Inputs (0, 1)
    printf("%s", nand_input1);
    printf("%s", value_1); // Print NAND Q1 value (which is 1)
    printf("%s", comma_space);
    printf("%s", value_0); // Print NAND Q2 value (which is 0)
    printf("%s", newline);

    // Step 2: NAND Inputs (1, 1)
    printf("%s", nand_input2);
    printf("%s", value_1); // Print NAND Q1 value (which is 1)
    printf("%s", comma_space);
    printf("%s", value_0); // Print NAND Q2 value (which is 0)
    printf("%s", newline);

    // NOR Latch Analysis
    printf("%s", nor_msg);

    // Step 1: NOR Inputs (0, 1)
    printf("%s", nor_input1);
    printf("%s", value_0); // Print NOR Q1 value (which is 0)
    printf("%s", comma_space);
    printf("%s", value_0); // Print NOR Q2 value (which is 0)
    printf("%s", newline);

    // Step 2: NOR Inputs (1, 1)
    printf("%s", nor_input2);
    printf("%s", value_0); // Print NOR Q1 value (which is 0)
    printf("%s", comma_space);
    printf("%s", value_0); // Print NOR Q2 value (which is 0)
    printf("%s", newline);

    // Final Answer
    printf("%s", final_msg);
    printf("%s", final_answer);

    return 0; // Exit
}
