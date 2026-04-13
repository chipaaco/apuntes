#!/usr/bin/env bash
# ===========================================================
# build-all.sh — Compila TODOS los sub-sitios
#
# Cada sub-sitio se compila usando dos archivos de config:
#   1. _global/config.yml  (configuración compartida)
#   2. sites/<nombre>/_config.yml  (configuración específica)
#
# El output va a _site_output/<nombre>/
# ===========================================================

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
GLOBAL_CONFIG="$REPO_ROOT/_global/config.yml"
OUTPUT_BASE="$REPO_ROOT/_site_output"

# Cargar funciones compartidas
source "$(dirname "$0")/_helpers.sh"

# Limpiar output anterior
rm -rf "$OUTPUT_BASE"
mkdir -p "$OUTPUT_BASE"

echo "=== Compilando todos los sub-sitios ==="

for site_dir in "$REPO_ROOT"/sites/*/; do
    site_name="$(basename "$site_dir")"
    site_config="$site_dir/_config.yml"
    site_output="$OUTPUT_BASE/$site_name"

    if [ ! -f "$site_config" ]; then
        echo "⚠️  Saltando $site_name — no tiene _config.yml"
        continue
    fi

    echo ""
    echo "--- Compilando: $site_name ---"

    # Instalar dependencias
    (cd "$site_dir" && bundle install --quiet)

    # Sincronizar _includes y assets globales
    sync_global_includes "$site_dir"
    sync_global_assets "$site_dir"

    # Compilar con ambos configs (el segundo sobreescribe al primero)
    (cd "$site_dir" && bundle exec jekyll build \
        --config "$GLOBAL_CONFIG,$site_config" \
        --destination "$site_output")

    echo "✅ $site_name → $site_output"
done

echo ""
echo "=== Compilación completada ==="
echo "Output en: $OUTPUT_BASE/"
