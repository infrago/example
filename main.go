package main

import (
	_ "github.com/infrago/example/trigger"

	"github.com/infrago/infra"
)

func main() {
	infra.Go()
}
