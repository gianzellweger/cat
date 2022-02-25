#!/usr/bin/osascript

on run argv
    if argv's length > 0 then
        try
            log (read item 1 of argv)
        on error
            log "File not found"
            error "" number 1
        end try
    else
        log "File not found"
        error "" number 1
    end if
end run