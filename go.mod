module github.com/infrago/example

go 1.17

replace github.com/infrago/base => ../base

replace github.com/infrago/util => ../util

replace github.com/infrago/infra => ../infra

replace github.com/infrago/http => ../http

replace github.com/infrago/htt-default => ../http-default

replace github.com/infrago/view => ../view

replace github.com/infrago/view-default => ../view-default

require (
	github.com/infrago/base v0.0.0-00010101000000-000000000000 // indirect
	github.com/infrago/infra v0.0.0-00010101000000-000000000000
	github.com/infrago/util v0.0.0-00010101000000-000000000000 // indirect
)

require (
	github.com/infrago/http v0.0.0-00010101000000-000000000000
	github.com/infrago/http-default v0.0.0-20230317082929-e99618b22fae
	github.com/infrago/view-default v0.0.0-00010101000000-000000000000
)

require (
	github.com/BurntSushi/toml v1.2.1 // indirect
	github.com/gorilla/mux v1.8.0 // indirect
	github.com/infrago/view v0.0.0-00010101000000-000000000000 // indirect
)
