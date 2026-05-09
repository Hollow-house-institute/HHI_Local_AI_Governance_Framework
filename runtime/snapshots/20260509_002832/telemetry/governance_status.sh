#!/data/data/com.termux/files/usr/bin/bash

echo "GOVERNANCE_STATUS_REPORT"

./runtime/telemetry/continuity_score.sh
./runtime/telemetry/drift_monitor.sh
./runtime/telemetry/escalation_engine.sh
./runtime/telemetry/intervention_engine.sh
./runtime/telemetry/stop_authority.sh
