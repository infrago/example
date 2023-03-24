package trigger

import (
	. "github.com/infrago/base"
	"github.com/infrago/event"
	"github.com/infrago/http"
	"github.com/infrago/infra"
)

func init() {

	infra.Register("event", event.Declare{
		Name: "event声明", Text: "event声明",
	})

	infra.Register("event", event.Event{
		Name: "event", Text: "event",
		Action: func(ctx *event.Context) {
			infra.Debug("event action...")
		},
	})

	infra.Register(".event", http.Router{
		Uri: "/event", Name: "event", Text: "event",
		Action: func(ctx *http.Context) {
			event.Publish("event", Map{"msg": "msg from http"})
			ctx.Text("ok")
		},
	})
}
