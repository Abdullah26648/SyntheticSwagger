FROM stoplight/prism:4

COPY openapi.yaml /tmp/openapi.yaml

RUN chmod 644 /tmp/openapi.yaml
RUN chmod +x /usr/local/bin/prism

ENTRYPOINT ["sh", "-c", "prism mock /tmp/openapi.yaml -h 0.0.0.0 -p ${PORT}"]







