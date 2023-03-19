module github.com/infrago/example

go 1.17

replace github.com/infrago/base => ../base

replace github.com/infrago/util => ../util

replace github.com/infrago/infra => ../infra

replace github.com/infrago/log => ../log

replace github.com/infrago/log-default => ../log-default

replace github.com/infrago/http => ../http

replace github.com/infrago/htt-default => ../http-default

replace github.com/infrago/view => ../view

replace github.com/infrago/view-default => ../view-default

replace github.com/infrago/cache => ../cache

replace github.com/infrago/cache-default => ../cache-default

replace github.com/infrago/cache-redis => ../cache-redis

replace github.com/infrago/cache-buntdb => ../cache-buntdb

replace github.com/infrago/mutex => ../mutex

replace github.com/infrago/mutex-default => ../mutex-default

replace github.com/infrago/mutex-redis => ../mutex-redis

replace github.com/infrago/queue => ../queue

replace github.com/infrago/queue-default => ../queue-default

replace github.com/infrago/queue-redis => ../queue-redis

replace github.com/infrago/queue-nats => ../queue-nats

replace github.com/infrago/event => ../event

replace github.com/infrago/event-default => ../event-default

replace github.com/infrago/event-redis => ../event-redis

replace github.com/infrago/event-nats => ../event-nats

require (
	github.com/infrago/base v0.0.0-00010101000000-000000000000
	github.com/infrago/infra v0.0.0-00010101000000-000000000000
	github.com/infrago/util v0.0.0-00010101000000-000000000000 // indirect
)

require (
	github.com/infrago/cache v0.0.0-00010101000000-000000000000
	github.com/infrago/cache-buntdb v0.0.0-00010101000000-000000000000
	github.com/infrago/cache-default v0.0.0-00010101000000-000000000000
	github.com/infrago/cache-redis v0.0.0-00010101000000-000000000000
	github.com/infrago/event v0.0.0-00010101000000-000000000000
	github.com/infrago/event-default v0.0.0-00010101000000-000000000000
	github.com/infrago/event-nats v0.0.0-00010101000000-000000000000
	github.com/infrago/event-redis v0.0.0-00010101000000-000000000000
	github.com/infrago/http v0.0.0-00010101000000-000000000000
	github.com/infrago/http-default v0.0.0-20230317082929-e99618b22fae
	github.com/infrago/log v0.0.0-20230318112749-c34741a864e0
	github.com/infrago/log-default v0.0.0-00010101000000-000000000000
	github.com/infrago/mutex v0.0.0-00010101000000-000000000000
	github.com/infrago/mutex-default v0.0.0-00010101000000-000000000000
	github.com/infrago/mutex-redis v0.0.0-00010101000000-000000000000
	github.com/infrago/queue v0.0.0-00010101000000-000000000000
	github.com/infrago/queue-default v0.0.0-00010101000000-000000000000
	github.com/infrago/queue-nats v0.0.0-00010101000000-000000000000
	github.com/infrago/queue-redis v0.0.0-00010101000000-000000000000
	github.com/infrago/view-default v0.0.0-00010101000000-000000000000
)

require (
	github.com/BurntSushi/toml v1.2.1 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/gomodule/redigo v1.8.9 // indirect
	github.com/gorilla/mux v1.8.0 // indirect
	github.com/infrago/view v0.0.0-00010101000000-000000000000 // indirect
	github.com/nats-io/nats-server/v2 v2.9.15 // indirect
	github.com/nats-io/nats.go v1.24.0 // indirect
	github.com/nats-io/nkeys v0.3.0 // indirect
	github.com/nats-io/nuid v1.0.1 // indirect
	github.com/panjf2000/ants/v2 v2.7.1 // indirect
	github.com/tidwall/btree v1.4.2 // indirect
	github.com/tidwall/buntdb v1.2.10 // indirect
	github.com/tidwall/gjson v1.14.3 // indirect
	github.com/tidwall/grect v0.1.4 // indirect
	github.com/tidwall/match v1.1.1 // indirect
	github.com/tidwall/pretty v1.2.0 // indirect
	github.com/tidwall/rtred v0.1.2 // indirect
	github.com/tidwall/tinyqueue v0.1.1 // indirect
	golang.org/x/crypto v0.6.0 // indirect
	google.golang.org/protobuf v1.30.0 // indirect
)
