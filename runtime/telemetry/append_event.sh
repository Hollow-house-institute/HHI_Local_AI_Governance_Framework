#!/data/data/com.termux/files/usr/bin/bash

TS=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

EVENT=${1:-governance_event}

echo "{\"timestamp\":\"${TS}\",\"event\":\"${EVENT}\"}" >> runtime/telemetry/governance_events.jsonl

echo "EVENT_APPENDED: ${EVENT}"
