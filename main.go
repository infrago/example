package main

import (
	_ "github.com/infrago/builtin"
	_ "github.com/infrago/cache-buntdb"
	_ "github.com/infrago/cache-redis"
	_ "github.com/infrago/event-nats"
	_ "github.com/infrago/event-redis"
	_ "github.com/infrago/http-mux"
	_ "github.com/infrago/mutex-redis"
	_ "github.com/infrago/queue-nats"
	_ "github.com/infrago/queue-redis"
	_ "github.com/infrago/session-buntdb"
	_ "github.com/infrago/session-redis"
	_ "github.com/infrago/storage-ipfs"
	_ "github.com/infrago/storage-object"

	_ "github.com/infrago/example/cache"
	_ "github.com/infrago/example/cron"
	_ "github.com/infrago/example/data"
	_ "github.com/infrago/example/event"
	_ "github.com/infrago/example/http"
	_ "github.com/infrago/example/mutex"
	_ "github.com/infrago/example/queue"
	_ "github.com/infrago/example/session"
	_ "github.com/infrago/example/storage"
	_ "github.com/infrago/example/trigger"

	"github.com/infrago/infra"
)

func main() {
	infra.Go()
}
