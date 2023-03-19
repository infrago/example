package trigger

import (
	. "github.com/infrago/base"
	"github.com/infrago/event"
	"github.com/infrago/http"
	"github.com/infrago/infra"
	"github.com/infrago/log"
)

func init() {

	infra.Register("event", event.Event{
		Name: "event", Text: "event",
		Action: func(ctx *event.Context) {
			log.Debug("event action...")
		},
	})

	infra.Register(".event", http.Router{
		Uri: "/event", Name: "event", Text: "event",
		Action: func(ctx *http.Context) {
			event.Notify("event", Map{"msg": "msg from http"})
			ctx.Text("ok")
		},
	})
}
