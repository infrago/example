package trigger

import (
	. "github.com/infrago/base"
	"github.com/infrago/cache"
	"github.com/infrago/http"
	"github.com/infrago/infra"
)

func init() {
	infra.Register(".cache", http.Router{
		Uri: "/cache", Name: "cache", Text: "cache",
		Action: func(ctx *http.Context) {
			cache.Write("key", Map{"acd": "asdfasdf"})
			val, _ := cache.Read("key")
			ctx.Json(val)
		},
	})
}
