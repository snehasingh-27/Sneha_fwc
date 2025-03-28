#include <stdio.h>

// Function to evaluate the logic equation
int evaluate_logic_equation(int X, int Y, int Z) {
    int not_X = !X;
    int not_Y = !Y;
    int not_Z = !Z;

    // Evaluate each part of the equation
    int part1 = (X || (Z && (not_Y || (not_Z || (X && not_Y)))));
    int part2 = (not_X || (not_Z && (X || Y)));

    // Final output of the logic equation
    return part1 && part2;
}

int main() {
    int X = 1;

    printf("Evaluating the logic equation with X = 1:\n");

    // Iterate through all possible values of Y and Z
    for (int Y = 0; Y <= 1; Y++) {
        for (int Z = 0; Z <= 1; Z++) {
            if (evaluate_logic_equation(X, Y, Z)) {
                printf("When Y = %d and Z = %d, the equation is TRUE.\n", Y, Z);
            }
        }
    }

    return 0;
}	
