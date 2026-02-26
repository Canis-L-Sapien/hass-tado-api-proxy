#!/usr/bin/with-contenv bashio

bashio::log.info "Starting Tado API Proxy..."

SUPERUSER_EMAIL=$(bashio::config 'superuser_email')
SUPERUSER_PASSWORD=$(bashio::config 'superuser_password')

export SUPERUSER_EMAIL
export SUPERUSER_PASSWORD

exec /app serve --dir /data --http ":8080"
