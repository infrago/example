package main

import (
	_ "github.com/infrago/http-default"
	_ "github.com/infrago/view-default"

	_ "github.com/infrago/example/http"
	_ "github.com/infrago/example/trigger"

	"github.com/infrago/infra"
)

func main() {
	infra.Go()
}
