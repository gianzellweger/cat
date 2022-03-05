package main

import (
	"fmt"
	"os"
	"io/ioutil"
	"log"
)

func main() {
	if (len(os.Args) > 1) {
		text, err := ioutil.ReadFile(os.Args[1])
		if (err != nil) {
			log.Fatal("File not found")
		}
		fmt.Println(string(text));
	} else {
		log.Fatal("File not found")
	}
}
