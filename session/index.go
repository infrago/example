package trigger

import (
	. "github.com/infrago/base"
	"github.com/infrago/http"
	"github.com/infrago/infra"
	"github.com/infrago/session"
)

func init() {
	infra.Register(".session", http.Router{
		Uri: "/session", Name: "session", Text: "session",
		Action: func(ctx *http.Context) {
			id := "123123123"
			session.Write(id, Map{"acd": "asdfasdf"})
			val, _ := session.Read(id)
			ctx.Json(val)
		},
	})
}
