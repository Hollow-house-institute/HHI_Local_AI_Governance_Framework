#!/data/data/com.termux/files/usr/bin/bash

./runtime/telemetry/append_event.sh governance_cycle
./runtime/metrics/export_metrics.sh
./runtime/snapshots/create_snapshot.sh
./runtime/exports/sign_governance_release.sh

echo "GOVERNANCE_CYCLE_COMPLETE"
