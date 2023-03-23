package trigger

import (
	. "github.com/infrago/base"
	"github.com/infrago/cron"
	"github.com/infrago/infra"
)

func init() {

	infra.Register("job", cron.Job{
		Time: "* * * * * *", Name: "job", Text: "job",
		Action: func(ctx *cron.Context) {
			infra.Debug("cron action...", ctx.Name)
		},
	})
}
