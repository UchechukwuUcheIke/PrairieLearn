#include <stdio.h>

int main() {
    FILE *fd = fopen("/grade/tests/document.txt", "r");
    if (fd != NULL) {
        printf("Not NULL\n");
    }
    
    char *buffer = calloc(10);
    fread(buffer,
                    1, 9,
                    fd);
    fclose(fd);
    //buffer[9] = '\0';
    printf("fd: %s\n", buffer);
}