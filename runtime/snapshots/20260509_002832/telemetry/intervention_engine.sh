#!/data/data/com.termux/files/usr/bin/bash

ESCALATION=$(./runtime/telemetry/escalation_engine.sh)

if [[ "$ESCALATION" == *"HIGH"* ]]; then
  echo "INTERVENTION_STATUS=TRIGGERED"
else
  echo "INTERVENTION_STATUS=NOT_REQUIRED"
fi
