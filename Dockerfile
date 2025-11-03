FROM stoplight/prism:4

COPY openapi.yaml /tmp/openapi.yaml

# Entrypoint doğrudan Prism, port için default değeri kullanıyoruz
ENTRYPOINT ["prism", "mock", "/tmp/openapi.yaml", "-h", "0.0.0.0", "-p", "3000"]



