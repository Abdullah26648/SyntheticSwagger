# Base image olarak Prism 4 kullanıyoruz
FROM stoplight/prism:4

# OpenAPI dosyamızı container içine kopyala
COPY openapi.yaml /tmp/openapi.yaml

# Dosya izinlerini ayarla
RUN chmod 644 /tmp/openapi.yaml
RUN chmod +x /usr/local/bin/prism

# Render genellikle $PORT environment variable kullanır, bu yüzden ENTRYPOINT'te $PORT kullanıyoruz
ENTRYPOINT ["sh", "-c", "prism mock /tmp/openapi.yaml -h 0.0.0.0 -p ${PORT}"]







