open System.IO

[<EntryPoint>]
let main argv = 
    if argv.Length > 0 then
        let filePath = argv.[0]
        let lines = File.ReadAllLines(filePath)
        for line in lines do
            printfn "%s" line
        0
    else
        printfn "File not found"
        1