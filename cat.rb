#!/usr/bin/env ruby

if ARGV.length > 0
    file = File.open(ARGV[0])
    if file
        file = file.read
        puts file
    else
        puts "File not found"
    end
else 
    puts "File not found"
end
