#!/usr/bin/env lua

if #arg > 0 then
    local file = io.open(arg[1], "rb")
    if file then
        local text = file:read("*a");
        print(text);
        file:close();
    else
        print("File not found")
        os.exit(1)
    end
else
    print("File not found")
    os.exit(1)
end