# Prerequisites

Install necessary go build tools:

`go install go.opentelemetry.io/collector/cmd/builder@latest`

Install run tool

`go install github.com/go-delve/delve/cmd/dlv@latest`

Update dlv to latest

`go get -u github.com/go-delve/delve/cmd/dlv`

## Generate custom collector

`builder --config=otelcol-builder.yaml`

## Run custom collector

On windows, simply add `.exe` to the binary to allow running it

`.\output\otelcol.exe --config .\otel-collector-config.yaml`

## Build the docker image

`docker build -t custom-otel-collector .`

## Run the docker image

`docker compose up`
