#!/usr/local/bin/python3

import sys

if len(sys.argv) > 1:
    with open(sys.argv[1], "r") as file :
        if not file:
            print("File not found")
            exit(1)
        print(file.read())
else:
    print("File not found")
    exit(1)