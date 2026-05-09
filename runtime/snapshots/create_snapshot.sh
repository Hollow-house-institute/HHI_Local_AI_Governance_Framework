#!/data/data/com.termux/files/usr/bin/bash

TS=$(date -u +"%Y%m%d_%H%M%S")

SNAPSHOT_DIR="runtime/snapshots/${TS}"

mkdir -p "${SNAPSHOT_DIR}"

cp -r runtime/telemetry "${SNAPSHOT_DIR}/"
cp -r runtime/logs "${SNAPSHOT_DIR}/"
cp -r runtime/evidence "${SNAPSHOT_DIR}/"

echo "SNAPSHOT_CREATED=${SNAPSHOT_DIR}"
