#define stdout 1
#include <string.h>
#include <unistd.h>

int main(int argc, char* argv[]) {
    
    char *buffer = "Hi! My name is ";
    int count = strlen(buffer);
    
    write(stdout, buffer, count);
    return 0;
}