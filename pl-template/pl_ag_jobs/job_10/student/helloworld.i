# 0 "helloworld.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "helloworld.c"


int main(int argc, char* argv[]) {

    char *buffer = "Hi! My name is ";
    int count = strlen(buffer);

    write(1, buffer, count);
    return 0;
}
