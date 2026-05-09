#!/data/data/com.termux/files/usr/bin/bash

echo "STREAMING_GOVERNANCE_EVENTS"

tail -f runtime/telemetry/governance_events.jsonl
