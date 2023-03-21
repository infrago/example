package trigger

import (
	. "github.com/infrago/base"
	"github.com/infrago/data"
	"github.com/infrago/http"
	"github.com/infrago/infra"
)

func init() {

	infra.Register("test", data.Table{
		Name: "测试", Text: "测试",
		Fields: Vars{
			"id":  Var{Type: "int", Required: false},
			"msg": Var{Type: "string", Required: true},
		},
	})

	infra.Register(".data", http.Route{
		Uri: "/data", Name: "data", Text: "data",
		Action: func(ctx *http.Context) {

			db := data.Base()
			item := db.Table("test").First(Map{
				"id": 123,
			})

			ctx.JSON(Map{
				"item": item,
			})
		},
	})
}
