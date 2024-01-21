#include <unistd.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char* argv[]) {
    
    char *buffer = "Hi! My name is \n";
    int count = strlen(buffer);
    write(stdout, buffer, count);
    return 0;
}