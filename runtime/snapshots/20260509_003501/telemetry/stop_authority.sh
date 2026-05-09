#!/data/data/com.termux/files/usr/bin/bash

INTERVENTION=$(./runtime/telemetry/intervention_engine.sh)

if [[ "$INTERVENTION" == *"TRIGGERED"* ]]; then
  echo "STOP_AUTHORITY=ACTIVE"
else
  echo "STOP_AUTHORITY=INACTIVE"
fi
