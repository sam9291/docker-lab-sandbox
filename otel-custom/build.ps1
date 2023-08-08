$env:GOOS = 'linux'; builder --config=otelcol-builder.yaml
docker build -t custom-otel-collector .