#!/usr/bin/env bashio

bashio::log.info "Starting..."


ngrok config add-authtoken $NGROK_API_KEY

/start
