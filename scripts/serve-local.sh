#!/usr/bin/env bash
# ===========================================================
# serve-local.sh — Sirve un sub-sitio localmente para preview
#
# Uso: bash scripts/serve-local.sh <nombre-del-sitio>
# Ejemplo: bash scripts/serve-local.sh arquitectura
#
# Abre el navegador en http://localhost:4000/apuntes/<sitio>/
# ===========================================================

set -euo pipefail

if [ $# -eq 0 ]; then
    echo "Uso: bash scripts/serve-local.sh <nombre-del-sitio>"
    echo ""
    echo "Sub-sitios disponibles:"
    for d in "$(dirname "$0")/../sites"/*/; do
        echo "  - $(basename "$d")"
    done
    exit 1
fi

SITE_NAME="$1"
REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
GLOBAL_CONFIG="$REPO_ROOT/_global/config.yml"
SITE_DIR="$REPO_ROOT/sites/$SITE_NAME"
SITE_CONFIG="$SITE_DIR/_config.yml"

if [ ! -d "$SITE_DIR" ]; then
    echo "❌ Sub-sitio no encontrado: $SITE_NAME"
    exit 1
fi

echo "=== Sirviendo: $SITE_NAME ==="
echo "URL: http://localhost:4000/apuntes/$SITE_NAME/"
echo ""

(cd "$SITE_DIR" && bundle install --quiet)
(cd "$SITE_DIR" && bundle exec jekyll serve \
    --config "$GLOBAL_CONFIG,$SITE_CONFIG" \
    --livereload)
