package trigger

import (
	. "github.com/infrago/base"
	"github.com/infrago/http"
	"github.com/infrago/infra"
	"github.com/infrago/storage"
)

func init() {

	infra.Register(".upload", http.Router{
		Uri: "/upload", Name: "upload", Text: "upload",
		Action: func(ctx *http.Context) {
			file, _, err := storage.Upload(ctx.Upload["file"])
			if err != nil {
				ctx.Text(err.Error())
				return
			}

			ctx.JSON(Map{
				"file": file.Code(),
			})
		},
	})
}
