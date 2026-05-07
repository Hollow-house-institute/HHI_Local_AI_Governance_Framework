#!/data/data/com.termux/files/usr/bin/bash

DRIFT_SCORE=${1:-0}

echo "Behavioral Drift Score: $DRIFT_SCORE"

if [ "$DRIFT_SCORE" -ge 70 ]; then
  echo "ESCALATION_TRIGGERED=true"
  echo "STOP_AUTHORITY=ACTIVE"
else
  echo "ESCALATION_TRIGGERED=false"
  echo "STOP_AUTHORITY=INACTIVE"
fi
