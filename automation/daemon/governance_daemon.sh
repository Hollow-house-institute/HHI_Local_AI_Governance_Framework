#!/data/data/com.termux/files/usr/bin/bash

while true
do
  ./runtime/telemetry/append_event.sh daemon_heartbeat
  sleep 60
done
