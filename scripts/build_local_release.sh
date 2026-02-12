#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
OUT_DIR="$ROOT_DIR/dist"
STAGE_DIR="$OUT_DIR/Karl_Donitz_Last_Stand"

rm -rf "$STAGE_DIR"
mkdir -p "$STAGE_DIR/mod"

cp -R "$ROOT_DIR/mod/Karl_Donitz_Last_Stand" "$STAGE_DIR/mod/Karl_Donitz_Last_Stand"
cp "$ROOT_DIR/mod/Karl_Donitz_Last_Stand.mod" "$STAGE_DIR/mod/Karl_Donitz_Last_Stand.mod"
cp "$ROOT_DIR/README.md" "$STAGE_DIR/README.md"

(
  cd "$OUT_DIR"
  rm -f Karl_Donitz_Last_Stand.zip
  zip -rq Karl_Donitz_Last_Stand.zip Karl_Donitz_Last_Stand
)

echo "Created: $OUT_DIR/Karl_Donitz_Last_Stand.zip"
