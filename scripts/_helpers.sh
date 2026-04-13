#!/usr/bin/env bash
# ===========================================================
# _helpers.sh — Funciones compartidas entre scripts de build
#
# Uso: source "$(dirname "$0")/_helpers.sh"
# ===========================================================

# sync_global_includes <site_dir>
#
# Crea symlinks en <site_dir>/_includes/ apuntando a cada
# archivo de _global/_includes/, SIN sobreescribir archivos
# locales que ya existan (los locales tienen prioridad).
#
# Los symlinks se crean como relativos para que funcionen
# tanto en dev local como en CI.
sync_global_includes() {
    local site_dir="$1"
    local repo_root
    repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
    local global_includes="$repo_root/_global/_includes"
    local site_includes="$site_dir/_includes"

    # Si no hay includes globales, no hacer nada
    if [ ! -d "$global_includes" ] || [ -z "$(ls -A "$global_includes" 2>/dev/null)" ]; then
        return 0
    fi

    mkdir -p "$site_includes"

    for file in "$global_includes"/*; do
        local filename
        filename="$(basename "$file")"
        local target="$site_includes/$filename"

        # Si ya existe un archivo real (no symlink), el local gana
        if [ -e "$target" ] && [ ! -L "$target" ]; then
            continue
        fi

        # Crear/actualizar symlink relativo
        local rel_path
        rel_path="$(realpath --relative-to="$site_includes" "$file")"
        ln -sf "$rel_path" "$target"
    done
}
