#!/data/data/com.termux/files/usr/bin/bash

TS=$(date -u +"%Y%m%d_%H%M%S")

mkdir -p runtime/exports

zip -r "runtime/exports/governance_bundle_${TS}.zip" runtime

sha256sum "runtime/exports/governance_bundle_${TS}.zip" > "runtime/exports/governance_bundle_${TS}.sha256"

echo "GOVERNANCE_EXPORT_CREATED: governance_bundle_${TS}.zip"
