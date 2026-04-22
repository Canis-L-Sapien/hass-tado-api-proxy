FROM ghcr.io/s1adem4n/tado-api-proxy:1.2.1 AS upstream

ARG BUILD_FROM
FROM ${BUILD_FROM}

RUN apk add --no-cache tzdata
COPY --from=upstream /app /app
COPY run.sh /run.sh
RUN chmod +x /app /run.sh

CMD ["/run.sh"]
