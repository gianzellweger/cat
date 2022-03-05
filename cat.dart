import "dart:io";

void main(List<String> argv) {
    if (argv.length > 0) {
        final file = File(argv[0]);
        file.readAsString().then((value) => print(value));
    } else {
        print("File not found");
        exit(1);
    } 
}