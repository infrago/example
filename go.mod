module github.com/infrago/example

go 1.17

replace github.com/infrago/base => ../../infrago/base
replace github.com/infrago/util => ../../infrago/util
replace github.com/infrago/infra => ../../infrago/infra

require (
    github.com/infrago/base v0.0.0-00010101000000-000000000000
    github.com/infrago/util v0.0.0-00010101000000-000000000000 // indirect
    github.com/infrago/infra v0.0.0-00010101000000-000000000000
)

require (
    github.com/BurntSushi/toml v1.2.1 // indirect
)
