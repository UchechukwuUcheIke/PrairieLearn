#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    FILE* filedes = fopen("/grade/tests/document.txt", "r");
    
    if (filedes == NULL) {
        printf("NULL\n");
    } else {
        printf("Not Null\n");
    }

    while (!feof(filedes)) {
        ch = fgetc(ptr);
        printf("%c", ch);
    }
    printf("\n");
    
    
    return 0;
}