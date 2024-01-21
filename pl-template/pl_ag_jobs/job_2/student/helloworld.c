#include <unistd.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char* argv[]) {
    
    char *buffer = "Hi! My name is ";
    int count = strlen(buffer);
    write(stdin, buffer, count);
    return 0;
}