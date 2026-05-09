#!/data/data/com.termux/files/usr/bin/bash

TS=$(date -u +"%Y%m%d_%H%M%S")

sha256sum runtime/exports/* > runtime/exports/release_checksums_${TS}.sha256

echo "SIGNED_RELEASE_CREATED=${TS}"
