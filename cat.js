const fs = require('fs');
const process = require("process")

if (process.argv.length > 2) {
    fs.readFile(process.argv[2], "binary", function (err, text) {
        if (err) {
            return console.log("File not found");
        }
        console.log(text);
    });
} else {
    console.error("File not found")
    process.exit(1)
}