#!/usr/bin/env node

const fs = require('fs');
const process = require("process")

const prefixArgs = process.argv[0].includes("node") ? 2 : 1;

if (process.argv.length > prefixArgs) {
    fs.readFile(process.argv[prefixArgs], "binary", function (err, text) {
        if (err) {
            return console.log("File not found");
        }
        console.log(text);
    });
} else {
    console.error("File not found")
    process.exit(1)
}