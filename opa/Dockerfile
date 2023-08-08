FROM openpolicyagent/opa:latest-debug
USER root
VOLUME ./build
VOLUME ./config
ENTRYPOINT opa build /config/ -o /build/bundle.tar.gz