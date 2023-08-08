FROM scratch
ENV HOME=/root
ENV RUN_IN_CONTAINER=True
# Copy our static executable.
COPY ./output/otelcol /
# Run the binary.
ENTRYPOINT ["/otelcol"]
CMD ["--config=/etc/otelcol/config.yaml"]
EXPOSE 2000 4317 55681