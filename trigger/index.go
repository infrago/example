package trigger

import (
	"github.com/infrago/infra"
	"github.com/infrago/log"
)

func init() {
	infra.Register(infra.START, infra.Trigger{
		Action: func(ctx *infra.Context) {
			log.Debug("start....", infra.Generate())
			// for i := 0; i < 10000; i++ {
			// 	log.Debug(infra.Generate())
			// }
		},
	})
	infra.Register(infra.STOP, infra.Trigger{
		Action: func(ctx *infra.Context) {
			log.Debug("stop....", infra.Generate())
		},
	})
}
