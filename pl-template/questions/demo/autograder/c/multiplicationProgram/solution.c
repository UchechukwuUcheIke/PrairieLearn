#include "format.h"
#include <stdlib.h>

int main(int argc, char* argv[]) {
    
    if (argc != 3) {
        print_multiplication_usage();
    }
    
    char *operand1_str = argv[1];
    char *operand2_str = argv[2];
    
    int operand1 = atoi(operand1_str);
    int operand2 = atoi(operand2_str);
    
    int product = operand1 * operand2;
    
    print_multiplication_result(operand1, operand2, product);
    
    return 0;
}