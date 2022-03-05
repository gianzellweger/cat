#!/usr/bin/env osascript

on run argv
    if argv's length > 0 then
        try
            log (read item 1 of argv)
        on error
            error "File not found" number 1
        end try
    else
        error "File not found" number 1
    end if
end run