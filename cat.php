#!/usr/bin/env php
<?php 
    if ($argc > 1) {
        if (file_exists($argv[1])) {
            readfile($argv[1], false, NULL);
            echo("\n");
        } else {
            exit(print("File not found\n")); //This uses the property of print that it always returns 1
        }
    } else {
        exit(print("File not found\n")); 
    }
?>
