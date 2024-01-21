#include <stdio.h>
#include <unistd.h>
#include <string.h>

int main(int argc, char* argv[]) {

    char *buffer = "Hi! My name is ";
    int count = strlen(buffer);
    
    write(1, buffer, count);
    return 0;
}