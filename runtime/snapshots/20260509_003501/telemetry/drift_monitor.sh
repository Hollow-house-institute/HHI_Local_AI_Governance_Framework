#!/data/data/com.termux/files/usr/bin/bash

EVENT_COUNT=$(wc -l < runtime/telemetry/governance_events.jsonl)

if [ "$EVENT_COUNT" -gt 5 ]; then
  echo "DRIFT_STATUS=STABLE"
else
  echo "DRIFT_STATUS=INSUFFICIENT_TELEMETRY"
fi
