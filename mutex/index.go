package trigger

import (
	"time"

	"github.com/infrago/http"
	"github.com/infrago/infra"
	"github.com/infrago/mutex"
)

func init() {
	infra.Register(".mutex", http.Router{
		Uri: "/mutex", Name: "mutex", Text: "mutex",
		Action: func(ctx *http.Context) {

			if mutex.Locked("key", time.Second) {
				ctx.Text("locked")
			} else {
				ctx.Text("unlock")
			}
		},
	})
}
