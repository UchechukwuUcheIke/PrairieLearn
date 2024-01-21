#include <stdio.h>

int main() {
    FILE *fd = fopen("/grade/tests/document.txt", "r");
    if (fd != NULL) {
        printf("Not NULL\n");
    }
    
    char buffer[10];
    fread(buffer,
                    9, 1,
                    fd);
    fclose(fd);
    //buffer[9] = '\0';
    printf("fd: %s\n", buffer);
}