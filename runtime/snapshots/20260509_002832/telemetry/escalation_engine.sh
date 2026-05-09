#!/data/data/com.termux/files/usr/bin/bash

STATUS=$(./runtime/telemetry/drift_monitor.sh)

if [[ "$STATUS" == *"INSUFFICIENT_TELEMETRY"* ]]; then
  echo "ESCALATION_LEVEL=HIGH"
else
  echo "ESCALATION_LEVEL=LOW"
fi
