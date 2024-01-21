#include <stdio.h>
#include <stdlib.h>

int main() {
    FILE *fd = fopen("/grade/tests/document.txt", "r");
    if (fd != NULL) {
        printf("Not NULL\n");
    }
    
    char buffer[10];
    printf("fd: %s\n", buffer);
    fread(buffer,
                    1, 9,
                    fd);
    fclose(fd);
    //buffer[9] = '\0';
    //printf("fd: %s\n", buffer);
    
    free(buffer);
}