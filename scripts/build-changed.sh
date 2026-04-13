#!/usr/bin/env bash
# ===========================================================
# build-changed.sh — Compila SOLO los sub-sitios modificados
#
# Detecta cambios comparando HEAD con HEAD~1 (último commit).
# Si se ejecuta sin argumentos, detecta automáticamente.
# También se puede forzar compilar sitios específicos:
#   bash scripts/build-changed.sh arquitectura sistemas-operativos
# ===========================================================

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
GLOBAL_CONFIG="$REPO_ROOT/_global/config.yml"
OUTPUT_BASE="$REPO_ROOT/_site_output"

# Si se pasan argumentos, usarlos como lista de sitios
if [ $# -gt 0 ]; then
    CHANGED_SITES=("$@")
else
    # Detectar sitios con cambios en el último commit
    echo "=== Detectando sub-sitios modificados ==="

    CHANGED_SITES=()

    # Obtener archivos cambiados entre HEAD~1 y HEAD
    CHANGED_FILES=$(git -C "$REPO_ROOT" diff --name-only HEAD~1 HEAD 2>/dev/null || \
                    git -C "$REPO_ROOT" diff --name-only HEAD 2>/dev/null || echo "")

    # Verificar si cambió la config global (recompila todo)
    if echo "$CHANGED_FILES" | grep -q "^_global/"; then
        echo "⚠️  La configuración global cambió — compilando TODOS los sub-sitios"
        exec bash "$REPO_ROOT/scripts/build-all.sh"
        exit 0
    fi

    # Detectar qué sub-sitios cambiaron
    for site_dir in "$REPO_ROOT"/sites/*/; do
        site_name="$(basename "$site_dir")"
        if echo "$CHANGED_FILES" | grep -q "^sites/$site_name/"; then
            CHANGED_SITES+=("$site_name")
        fi
    done
fi

if [ ${#CHANGED_SITES[@]} -eq 0 ]; then
    echo "No se detectaron cambios en ningún sub-sitio."
    exit 0
fi

echo "Sub-sitios a compilar: ${CHANGED_SITES[*]}"

mkdir -p "$OUTPUT_BASE"

for site_name in "${CHANGED_SITES[@]}"; do
    site_dir="$REPO_ROOT/sites/$site_name"
    site_config="$site_dir/_config.yml"
    site_output="$OUTPUT_BASE/$site_name"

    if [ ! -d "$site_dir" ]; then
        echo "⚠️  Directorio no encontrado: $site_dir"
        continue
    fi

    if [ ! -f "$site_config" ]; then
        echo "⚠️  Saltando $site_name — no tiene _config.yml"
        continue
    fi

    echo ""
    echo "--- Compilando: $site_name ---"

    # Limpiar output anterior de este sitio
    rm -rf "$site_output"

    # Instalar dependencias
    (cd "$site_dir" && bundle install --quiet)

    # Compilar
    (cd "$site_dir" && bundle exec jekyll build \
        --config "$GLOBAL_CONFIG,$site_config" \
        --destination "$site_output")

    echo "✅ $site_name → $site_output"
done

echo ""
echo "=== Compilación selectiva completada ==="
