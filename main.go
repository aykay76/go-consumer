package main

import (
	"fmt"

	thing "github.com/aykay76/go-package"
)

func main() {
	var thing thing.Thing
	thing.Name = "Bob"
	fmt.Println(thing.Name)
}
