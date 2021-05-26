# delve-docker
    $ tree
    .
    ├── cmd
    │   └── program
    │       └── main.go
    └── go.mod

    $ docker run --rm -v "${PWD}:/src" -w /src -p43000:40000 -e GOPATH=/ kirillgrigorev/delve /src/cmd/program