package main

import (
	thing "github.com/aykay76/go-package"
)

func main() {
	var t thing.Thing
	t.Name = "Bob"
	t.Hello()
	t.Goodbye()
}
