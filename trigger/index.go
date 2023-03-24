package trigger

import (
	"github.com/infrago/infra"
	"github.com/infrago/log"
)

func init() {
	infra.Register(infra.START, infra.Trigger{
		Action: func(ctx *infra.Context) {
			log.Debug("start....")
		},
	})
	infra.Register(infra.STOP, infra.Trigger{
		Action: func(ctx *infra.Context) {
			log.Debug("stop....")
		},
	})
}
