#include <stdio.h>

int main(int argc, char **argv) {
    FILE *file;
    file = fopen(argv[1], "rb");
    if (!file) {
        printf("File not found\n");
        return 1;
    }
    char c;
    while ((c = getc(file)) != EOF) printf("%c", c);
    fclose(file);
    printf("\n");
    return 0;
}