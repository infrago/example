package trigger

import (
	"github.com/infrago/http"
	"github.com/infrago/infra"
)

func init() {
	infra.Register(".index", http.Route{
		Uri: "/", Name: "首页", Text: "首页",
		Action: func(ctx *http.Context) {
			ctx.Text("hello world.")
		},
	})
}
