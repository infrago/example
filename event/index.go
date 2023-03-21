package trigger

import (
	. "github.com/infrago/base"
	"github.com/infrago/event"
	"github.com/infrago/http"
	"github.com/infrago/infra"
)

func init() {

	infra.Register("event", event.Event{
		Name: "event", Text: "event",
		Action: func(ctx *event.Context) {
			infra.Debug("event action...")
		},
	})

	infra.Register(".event", http.Route{
		Uri: "/event", Name: "event", Text: "event",
		Action: func(ctx *http.Context) {
			event.Notify("event", Map{"msg": "msg from http"})
			ctx.Text("ok")
		},
	})
}
