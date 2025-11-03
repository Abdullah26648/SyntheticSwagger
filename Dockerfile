COPY openapi.yaml /tmp/openapi.yaml
ENTRYPOINT ["prism", "mock", "/tmp/openapi.yaml", "-h", "0.0.0.0", "-p", "$PORT"]

