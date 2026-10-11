#!/usr/bin/env bash
# Builds the flashable Magisk/KernelSU zip into build/.
set -euo pipefail
cd "$(dirname "$0")"
ver=$(sed -n 's/^version=//p' module/module.prop)
mkdir -p build
rm -f build/*.zip
(cd module && zip -q -r -X "../build/btsco_wb_fix-v$ver.zip" .)
echo "built build/btsco_wb_fix-v$ver.zip"
