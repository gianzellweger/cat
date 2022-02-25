if length(ARGS) > 0
    text = read(first(ARGS), String)
    println(text)
else
    println("File not found")
    exit(1)
end