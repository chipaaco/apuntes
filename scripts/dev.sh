#!/usr/bin/env bash
# ===========================================================
# dev.sh — Desarrollo local con hot reload completo
#
# Lanza jekyll serve con livereload Y vigila los archivos
# de configuración para reiniciar automáticamente cuando
# cambian (algo que Jekyll no hace por sí solo).
#
# Uso: bash scripts/dev.sh <nombre-del-sitio>
# Ejemplo: bash scripts/dev.sh arquitectura
#
# Requisitos: inotify-tools (apt install inotify-tools)
# ===========================================================

set -euo pipefail

# --- Verificar dependencia ---
if ! command -v inotifywait &>/dev/null; then
    echo "❌ inotifywait no encontrado."
    echo "   Instalálo con: sudo apt install inotify-tools"
    exit 1
fi

# --- Validar argumento ---
if [ $# -eq 0 ]; then
    echo "Uso: bash scripts/dev.sh <nombre-del-sitio>"
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

# Cargar funciones compartidas
source "$(dirname "$0")/_helpers.sh"

if [ ! -d "$SITE_DIR" ]; then
    echo "❌ Sub-sitio no encontrado: $SITE_NAME"
    exit 1
fi

# --- PID del proceso Jekyll (para poder matarlo) ---
JEKYLL_PID=""

# --- Limpieza al salir (Ctrl+C o error) ---
cleanup() {
    echo ""
    echo "🛑 Deteniendo servidor de desarrollo..."
    if [ -n "$JEKYLL_PID" ] && kill -0 "$JEKYLL_PID" 2>/dev/null; then
        kill "$JEKYLL_PID" 2>/dev/null
        wait "$JEKYLL_PID" 2>/dev/null
    fi
    exit 0
}
trap cleanup EXIT INT TERM

# --- Función que lanza Jekyll ---
start_jekyll() {
    echo ""
    echo "🚀 Iniciando Jekyll para: $SITE_NAME"
    echo "   URL: http://localhost:4000/apuntes/$SITE_NAME/"
    echo ""

    (cd "$SITE_DIR" && bundle exec jekyll serve \
        --config "$GLOBAL_CONFIG,$SITE_CONFIG" \
        --livereload \
        --force_polling) &
    JEKYLL_PID=$!
}

# --- Instalar dependencias una sola vez ---
echo "=== Modo desarrollo: $SITE_NAME ==="
(cd "$SITE_DIR" && bundle install --quiet)

# --- Sincronizar _includes globales ---
sync_global_includes "$SITE_DIR"

# --- Lanzar Jekyll por primera vez ---
start_jekyll

# --- Bucle principal: vigilar configs ---
echo ""
echo "👁️  Vigilando cambios en:"
echo "   - $GLOBAL_CONFIG"
echo "   - $SITE_CONFIG"
echo ""
echo "   Cambios a .md → livereload automático (Jekyll)"
echo "   Cambios a _config.yml → restart automático (este script)"
echo ""
echo "   Ctrl+C para detener."
echo ""

while true; do
    # Esperar a que cambie alguno de los dos configs
    inotifywait -q -e modify,close_write \
        "$GLOBAL_CONFIG" "$SITE_CONFIG" 2>/dev/null

    echo ""
    echo "🔄 Config modificado — reiniciando Jekyll..."

    # Matar el proceso Jekyll actual
    if [ -n "$JEKYLL_PID" ] && kill -0 "$JEKYLL_PID" 2>/dev/null; then
        kill "$JEKYLL_PID" 2>/dev/null
        wait "$JEKYLL_PID" 2>/dev/null || true
    fi

    # Dar tiempo a que se libere el puerto
    sleep 1

    # Relanzar
    start_jekyll
done
