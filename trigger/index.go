package trigger

import (
	"fmt"

	"github.com/infrago/infra"
)

func init() {
	infra.Register(infra.START, infra.Trigger{
		Action: func(ctx *infra.Context) {
			fmt.Println("start....")
		},
	})
	infra.Register(infra.STOP, infra.Trigger{
		Action: func(ctx *infra.Context) {
			fmt.Println("stop....")
		},
	})
}
