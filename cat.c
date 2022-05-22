#include <stdio.h>
#include <sys/stat.h>


int main(int argc, char **argv) {
    if (argc < 2) {
        printf("File not found\n");
        return 1;
    }
    FILE *file;
    file = fopen(argv[1], "rb");
    if (!file) {
        printf("File not found\n");
        return 1;
    }
    struct stat statbuf;
    fstat(fileno(file), &statbuf);

    char buffer[statbuf.st_size];
    fread(buffer, statbuf.st_size, 1, file);
    fclose(file);
    printf("%s\n", buffer);
}