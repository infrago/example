package trigger

import (
	. "github.com/infrago/base"
	"github.com/infrago/event"
	"github.com/infrago/http"
	"github.com/infrago/infra"
	"github.com/infrago/log"
)

func init() {

	infra.Register("event", event.Declare{
		Name: "event声明", Text: "event声明表示，当前节点会发送此事件",
	})

	infra.Register("event", event.Event{
		Name: "测试事件", Text: "测试事件",
		Action: func(ctx *event.Context) {
			log.Debug("event action...", ctx.Value)
			event.Publish("event", Map{"msg": "test"})
		},
	})

	infra.Register("event.group", event.Event{
		Group: true, Name: "测试分组事件", Text: "分组事件，同一组节点只有1个节点会收到此事件",
		Action: func(ctx *event.Context) {
			log.Debug("event action...", ctx.Value)
			event.Publish("event.group", Map{"msg": "test"})
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
