ARG BUILD_FROM
FROM ${BUILD_FROM}

ARG BUILD_ARCH

RUN apk add --no-cache curl tzdata

RUN case "${BUILD_ARCH}" in \
      aarch64) ARCH="arm64" ;; \
      amd64)   ARCH="x86_64" ;; \
      armv7)   ARCH="armv7" ;; \
      *) echo "Unsupported arch: ${BUILD_ARCH}" && exit 1 ;; \
    esac && \
    curl -fsSL \
      "https://github.com/s1adem4n/tado-api-proxy/releases/latest/download/tado-api-proxy_linux_${ARCH}.tar.gz" \
      -o /tmp/tado.tar.gz && \
    tar -xzf /tmp/tado.tar.gz -C /tmp && \
    mv /tmp/tado-api-proxy /app && \
    chmod +x /app && \
    rm -f /tmp/tado.tar.gz

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
