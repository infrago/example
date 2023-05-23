package trigger

import (
	. "github.com/infrago/base"
	"github.com/infrago/data"
	"github.com/infrago/http"
	"github.com/infrago/infra"
)

func init() {

	infra.Register("user.Login", infra.Method{
		Name: "用户登录", Text: "用户登录",
		Args: Vars{
			"account":  Var{Type: "string", Required: true},
			"password": Var{Type: "password", Required: true},
		},
		Action: func(ctx *http.Context) (Map, Res) {
			db := data.Base()
			defer db.Close()

			account := ctx.Args["account"].(string)
			password := ctx.Args["password"].(string)

			user := db.Table("user").First(Map{
				"account": account,
			})
			if user == nil {
				return nil, LoginNotExist
			}

			if user["password"] != password {
				return nil, LoginPassword
			}

			return user, LoginOK
		},
	})

	infra.Register("test", data.Table{
		Name: "测试", Text: "测试",
		Fields: Vars{
			"id":  Var{Type: "int", Required: false},
			"msg": Var{Type: "string", Required: true},
		},
	})

	infra.Register(".login", http.Router{
		Uri: "/login", Name: "login", Text: "login",
		Routing: http.Routing{
			GET: http.Router{
				Action: func(ctx *http.Context) {
					ctx.View("login")
				},
			},
			POST: http.Router{
				Args: Vars{
					"account":  Var{Type: "string", Required: true},
					"password": Var{Type: "password", Required: true},
				},
				Action: func(ctx *http.Context) {
					user := ctx.Invoke("user.Login", ctx.Args)
					if res := ctx.Result(); res.Fail() {
						ctx.Answer(res)
					} else {
						//成功
						ctx.Answer(res, Map{
							"user": user,
						})
					}
				},
			},
		},
	})

	infra.Register(".data", http.Router{
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
