#include <stdio.h>
#include <stdlib.h>

void print_multiplication_usage() {
    fprintf(stdout, "\n\t ./multiplier <operand0> <operand1>\n\n");
    exit(1);
}

void print_multiplication_result(int operand1, int operand2, int result) {
    fprintf(stdout, "\n\t %d * %d = %d\n\n", operand1, operand2, result);
    exit(0);
}