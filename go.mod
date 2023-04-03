module github.com/infrago/example

go 1.17

replace github.com/infrago/base => ../base

replace github.com/infrago/builtin => ../builtin

replace github.com/infrago/util => ../util

replace github.com/infrago/cron => ../cron

replace github.com/infrago/infra => ../infra

replace github.com/infrago/log => ../log

replace github.com/infrago/log-default => ../log-default

replace github.com/infrago/http => ../http

replace github.com/infrago/http-default => ../http-default

replace github.com/infrago/http-mux => ../http-mux

replace github.com/infrago/view => ../view

replace github.com/infrago/view-default => ../view-default

replace github.com/infrago/cache => ../cache

replace github.com/infrago/cache-default => ../cache-default

replace github.com/infrago/cache-redis => ../cache-redis

replace github.com/infrago/cache-file => ../cache-file

replace github.com/infrago/cache-memory => ../cache-memory

replace github.com/infrago/cache-buntdb => ../cache-buntdb

replace github.com/infrago/session => ../session

replace github.com/infrago/session-default => ../session-default

replace github.com/infrago/session-redis => ../session-redis

replace github.com/infrago/session-file => ../session-file

replace github.com/infrago/session-memory => ../session-memory

replace github.com/infrago/session-buntdb => ../session-buntdb

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

replace github.com/infrago/data => ../data

replace github.com/infrago/data-postgres => ../data-postgres

replace github.com/infrago/store => ../store

replace github.com/infrago/store-default => ../store-default

replace github.com/infrago/store-ipfs => ../store-ipfs

replace github.com/infrago/store-object => ../store-object

require (
	github.com/infrago/base v0.0.0-00010101000000-000000000000
	github.com/infrago/infra v0.0.0-00010101000000-000000000000
	github.com/infrago/util v0.0.0-00010101000000-000000000000 // indirect
)

require (
	github.com/infrago/builtin v0.0.0-00010101000000-000000000000
	github.com/infrago/cache v0.0.0-00010101000000-000000000000
	github.com/infrago/cache-buntdb v0.0.0-00010101000000-000000000000
	github.com/infrago/cache-redis v0.0.0-00010101000000-000000000000
	github.com/infrago/cron v0.0.0-00010101000000-000000000000
	github.com/infrago/data v0.0.0-00010101000000-000000000000
	github.com/infrago/event v0.0.0-00010101000000-000000000000
	github.com/infrago/event-nats v0.0.0-00010101000000-000000000000
	github.com/infrago/event-redis v0.0.0-00010101000000-000000000000
	github.com/infrago/http v0.0.0-00010101000000-000000000000
	github.com/infrago/http-mux v0.0.0-00010101000000-000000000000
	github.com/infrago/log v0.0.0-20230318112749-c34741a864e0
	github.com/infrago/mutex v0.0.0-00010101000000-000000000000
	github.com/infrago/mutex-redis v0.0.0-00010101000000-000000000000
	github.com/infrago/queue v0.0.0-00010101000000-000000000000
	github.com/infrago/queue-nats v0.0.0-00010101000000-000000000000
	github.com/infrago/queue-redis v0.0.0-00010101000000-000000000000
	github.com/infrago/session v0.0.0-00010101000000-000000000000
	github.com/infrago/session-buntdb v0.0.0-00010101000000-000000000000
	github.com/infrago/session-redis v0.0.0-00010101000000-000000000000
	github.com/infrago/store v0.0.0-00010101000000-000000000000
	github.com/infrago/store-ipfs v0.0.0-00010101000000-000000000000
	github.com/infrago/store-object v0.0.0-00010101000000-000000000000
)

require (
	github.com/BurntSushi/toml v1.2.1 // indirect
	github.com/benbjohnson/clock v1.3.0 // indirect
	github.com/crackcomm/go-gitignore v0.0.0-20170627025303-887ab5e44cc3 // indirect
	github.com/decred/dcrd/dcrec/secp256k1/v4 v4.1.0 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/gomodule/redigo v1.8.9 // indirect
	github.com/gorilla/mux v1.8.0 // indirect
	github.com/infrago/cache-default v0.0.0-00010101000000-000000000000 // indirect
	github.com/infrago/data-postgres v0.0.0-00010101000000-000000000000 // indirect
	github.com/infrago/event-default v0.0.0-00010101000000-000000000000 // indirect
	github.com/infrago/http-default v0.0.0-20230317082929-e99618b22fae // indirect
	github.com/infrago/log-default v0.0.0-00010101000000-000000000000 // indirect
	github.com/infrago/mutex-default v0.0.0-00010101000000-000000000000 // indirect
	github.com/infrago/queue-default v0.0.0-00010101000000-000000000000 // indirect
	github.com/infrago/session-default v0.0.0-00010101000000-000000000000 // indirect
	github.com/infrago/store-default v0.0.0-00010101000000-000000000000 // indirect
	github.com/infrago/view v0.0.0-00010101000000-000000000000 // indirect
	github.com/infrago/view-default v0.0.0-00010101000000-000000000000 // indirect
	github.com/ipfs/go-cid v0.3.2 // indirect
	github.com/ipfs/go-ipfs-api v0.4.0 // indirect
	github.com/ipfs/go-ipfs-files v0.0.9 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/klauspost/cpuid/v2 v2.2.1 // indirect
	github.com/lib/pq v1.10.7 // indirect
	github.com/libp2p/go-buffer-pool v0.1.0 // indirect
	github.com/libp2p/go-flow-metrics v0.1.0 // indirect
	github.com/libp2p/go-libp2p v0.24.2 // indirect
	github.com/libp2p/go-openssl v0.1.0 // indirect
	github.com/mattn/go-pointer v0.0.1 // indirect
	github.com/minio/sha256-simd v1.0.0 // indirect
	github.com/mitchellh/go-homedir v1.1.0 // indirect
	github.com/modern-go/concurrent v0.0.0-20180228061459-e0a39a4cb421 // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/mr-tron/base58 v1.2.0 // indirect
	github.com/multiformats/go-base32 v0.1.0 // indirect
	github.com/multiformats/go-base36 v0.2.0 // indirect
	github.com/multiformats/go-multiaddr v0.8.0 // indirect
	github.com/multiformats/go-multibase v0.1.1 // indirect
	github.com/multiformats/go-multicodec v0.7.0 // indirect
	github.com/multiformats/go-multihash v0.2.1 // indirect
	github.com/multiformats/go-varint v0.0.7 // indirect
	github.com/nats-io/nats-server/v2 v2.9.15 // indirect
	github.com/nats-io/nats.go v1.24.0 // indirect
	github.com/nats-io/nkeys v0.3.0 // indirect
	github.com/nats-io/nuid v1.0.1 // indirect
	github.com/panjf2000/ants/v2 v2.7.1 // indirect
	github.com/robfig/cron/v3 v3.0.1 // indirect
	github.com/spacemonkeygo/spacelog v0.0.0-20180420211403-2296661a0572 // indirect
	github.com/spaolacci/murmur3 v1.1.0 // indirect
	github.com/speps/go-hashids/v2 v2.0.1 // indirect
	github.com/tidwall/btree v1.4.2 // indirect
	github.com/tidwall/buntdb v1.2.10 // indirect
	github.com/tidwall/gjson v1.14.3 // indirect
	github.com/tidwall/grect v0.1.4 // indirect
	github.com/tidwall/match v1.1.1 // indirect
	github.com/tidwall/pretty v1.2.0 // indirect
	github.com/tidwall/rtred v0.1.2 // indirect
	github.com/tidwall/tinyqueue v0.1.1 // indirect
	github.com/whyrusleeping/tar-utils v0.0.0-20180509141711-8c6c8ba81d5c // indirect
	golang.org/x/crypto v0.6.0 // indirect
	golang.org/x/sys v0.5.0 // indirect
	google.golang.org/protobuf v1.30.0 // indirect
	lukechampine.com/blake3 v1.1.7 // indirect
)
