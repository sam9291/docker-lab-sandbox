FROM golang:1.21 AS build
ENV GO111MODULE=on
ENV CGO_ENABLED=0
RUN go install go.opentelemetry.io/collector/cmd/builder@latest
COPY ./otelcol-builder.yaml ./otelcol-builder.yaml
RUN builder --config=otelcol-builder.yaml

FROM scratch AS runtime
# Copy our static executable.
COPY --from=build /output/otelcol /otelcol
# Run the binary.
ENTRYPOINT ["/otelcol"]
CMD ["--config=/etc/otelcol/config.yaml"]
EXPOSE 2000 4317 55681