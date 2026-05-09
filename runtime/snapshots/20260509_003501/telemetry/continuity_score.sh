#!/data/data/com.termux/files/usr/bin/bash

EVENT_COUNT=$(wc -l < runtime/telemetry/governance_events.jsonl)

echo "GOVERNANCE_CONTINUITY_SCORE=${EVENT_COUNT}"
