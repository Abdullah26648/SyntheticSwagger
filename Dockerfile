# Base image olarak Prism 4 kullanıyoruz
FROM stoplight/prism:4

# OpenAPI YAML dosyasını container içine kopyala
COPY openapi.yaml /tmp/openapi.yaml

# Prism mock server'ı Render'ın $PORT ortam değişkeni ile başlat
CMD ["sh", "-c", "prism mock /tmp/openapi.yaml -h 0.0.0.0 -p $PORT"]


