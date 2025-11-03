FROM stoplight/prism:4
COPY openapi.yaml /tmp/openapi.yml
ENTRYPOINT ["prism", "mock", "/tmp/openapi.yml", "-h", "0.0.0.0", "-p", "$PORT"]
