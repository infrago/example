package main

import (
	_ "github.com/infrago/builtin"
	_ "github.com/infrago/cache-buntdb"
	_ "github.com/infrago/cache-redis"
	_ "github.com/infrago/event-nats"
	_ "github.com/infrago/event-redis"
	_ "github.com/infrago/mutex-redis"
	_ "github.com/infrago/queue-nats"
	_ "github.com/infrago/queue-redis"
	_ "github.com/infrago/store-ipfs"
	_ "github.com/infrago/store-object"

	_ "github.com/infrago/example/cache"
	_ "github.com/infrago/example/cron"
	_ "github.com/infrago/example/data"
	_ "github.com/infrago/example/event"
	_ "github.com/infrago/example/http"
	_ "github.com/infrago/example/mutex"
	_ "github.com/infrago/example/queue"
	_ "github.com/infrago/example/store"
	_ "github.com/infrago/example/trigger"

	"github.com/infrago/infra"
)

func main() {
	infra.Go()
}
