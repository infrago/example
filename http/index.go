package trigger

import (
	. "github.com/infrago/base"
	"github.com/infrago/http"
	"github.com/infrago/infra"
)

func init() {
	infra.Register(".index", http.Router{
		Uri: "/", Name: "首页", Text: "首页",
		Action: func(ctx *http.Context) {
			ctx.Text("hello world.")
		},
	})

	infra.Register(".method", http.Router{
		Uri: "/method", Name: "方法支持", Text: "方法支持",
		Routing: http.Routing{
			GET: http.Router{
				Action: func(ctx *http.Context) {
					ctx.Text("get hello world.")
				},
			},
			POST: http.Router{
				Action: func(ctx *http.Context) {
					ctx.Text("post hello world.")
				},
			},
			PUT: http.Router{
				Action: func(ctx *http.Context) {
					ctx.Text("put hello world.")
				},
			},
		},
	})
}
