FROM stoplight/prism:4
COPY openapi.yaml /tmp/openapi.yaml
# Prism binary zaten imajda var, shell kullanmadan direkt çağır
ENTRYPOINT ["prism", "mock", "/tmp/openapi.yaml", "-h", "0.0.0.0", "-p", "${PORT:-3000}"]




