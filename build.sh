#!/bin/bash

rm -rf build
mkdir build
set -xe

gcc -o build/catc cat.c
gcc -x assembler -o build/catgas cat.gas
g++ -o build/catcpp cat.cpp
javac -d build cat.java && mv build/cat.class build/catjava.class
kotlinc -d build cat.kt && mv build/catKt.class build/catkt.class && rm -rf build/META-INF
swiftc -o build/catswift cat.swift
go build -o build/catgo cat.go
xcodebuild -project objC/cat.xcodeproj > /dev/null && mv objC/build/Release/cat build/catm
rustc -o build/catrst cat.rst
ghc -o build/caths cat.hs > /dev/null && rm cat.o && rm cat.hi
dart compile exe -o build/catdart cat.dart > /dev/null
dotnet build cs > /dev/null && mv cs/bin/*/*/cs build/catcs 
dotnet build fs > /dev/null&& mv fs/bin/*/*/fs build/catfs