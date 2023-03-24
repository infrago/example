package trigger

import (
	"time"

	. "github.com/infrago/base"
	"github.com/infrago/http"
	"github.com/infrago/infra"
	"github.com/infrago/queue"
)

func init() {

	infra.Register("queue", queue.Queue{
		Name: "queue", Text: "queue",
		Retry: queue.Retry{
			time.Second, time.Second * 3, time.Second * 5,
		},
		Action: func(ctx *queue.Context) {
			infra.Debug("queue action...", ctx.Value)
			ctx.Retry()
		},
	})

	infra.Register(".queue", http.Router{
		Uri: "/queue", Name: "queue", Text: "queue",
		Action: func(ctx *http.Context) {
			queue.PublishTo(infra.DEFAULT, "queue", Map{"msg": "msg from http"})
			ctx.Text("ok")
		},
	})
}
