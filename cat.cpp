#include <iostream>
#include <fstream>

int main(int argc, char *argv[]) {
    std::ifstream file(argv[1]);
    std::string line;
    if (!file) {
        std::cerr << "File not found" << std::endl;
        return 1;
    }
    while(getline(file, line)) {
        std::cout << line << std::endl;
    }
    file.close();
    return 0;
}