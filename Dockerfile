FROM golang:1.16.4-buster
RUN go install github.com/go-delve/delve/cmd/dlv@v1.6.1
EXPOSE 40000
ENTRYPOINT ["/go/bin/dlv", "--listen=:40000", "--headless=true", "--api-version=2", "--accept-multiclient", "debug"]