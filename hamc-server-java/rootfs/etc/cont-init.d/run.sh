#!/usr/bin/env bashio

bashio::log.info "Starting..."

#rm -f /root/.config/ngrok/ngrok.yml
mkdir /root/.config/ngrok
echo "tunnels:\n  first:\n    addr: 24454\n    proto: udp\n  second:\n    addr: 25565\n    proto: tcp" > /root/.config/ngrok/ngrok.yml

ngrok config add-authtoken $NGROK_API_KEY
ngrok start --all

/start
