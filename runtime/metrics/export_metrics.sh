#!/data/data/com.termux/files/usr/bin/bash

mkdir -p runtime/metrics

./runtime/telemetry/governance_status.sh > runtime/metrics/governance_metrics.txt

echo "METRICS_EXPORT_CREATED"
