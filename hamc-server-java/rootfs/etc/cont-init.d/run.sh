#!/usr/bin/env bashio

bashio::log.info "Starting..."

echo "
tunnels:
  first:
    addr: 24454
    proto: udp    
  second:
    addr: 25565
    proto: tcp" > /root/.config/ngrok/ngrok.yml

ngrok config add-authtoken $NGROK_API_KEY
ngrok start --all

/start
