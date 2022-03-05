#!/usr/bin/env julia

if length(ARGS) > 0
    file = open(first(ARGS))
    text = read(file, String)
    close(file)
    println(text)
else
    println("File not found")
    exit(1)
end