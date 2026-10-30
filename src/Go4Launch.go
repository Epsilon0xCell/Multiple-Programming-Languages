package main

import (
	"fmt"
)

// I put this in package main because that is what makes it a program
// I can run instead of a library other code imports. The Go runtime
// calls main for me, so nothing in this file calls it, and I should
// not go looking for a caller.
func main() {
	fmt.Println("Go for launch")
  fmt.Println("Roger that, we are go for launch")
}
