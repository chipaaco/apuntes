#!/usr/bin/env bash
# ===========================================================
# _helpers.sh — Funciones compartidas entre scripts de build
#
# Uso: source "$(dirname "$0")/_helpers.sh"
# ===========================================================

# sync_global_dir <site_dir> <dir_name>
#
# Sincroniza archivos desde _global/<dir_name>/ hacia <site_dir>/<dir_name>/
# Copiando archivos. Respeta archivos locales.
# Mantiene la estructura de subdirectorios.
sync_global_dir() {
    local site_dir="$1"
    local dir_name="$2"
    local repo_root
    repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
    local global_src="$repo_root/_global/$dir_name"
    local site_dest="$site_dir/$dir_name"

    # Si no existe el origen global, no hacer nada
    if [ ! -d "$global_src" ]; then
        return 0
    fi

    echo "📦 Sincronizando $dir_name globales (copia)..."

    # Usar find para obtener todos los archivos
    find "$global_src" -type f | while read -r global_file; do
        # Obtener ruta relativa desde la raíz del origen global
        local rel_to_root="${global_file#$global_src/}"
        local dest_file="$site_dest/$rel_to_root"
        local dest_dir
        dest_dir="$(dirname "$dest_file")"

        # Si ya existe un archivo real (no symlink), el local tiene prioridad
        if [ -e "$dest_file" ] && [ ! -L "$dest_file" ]; then
            # Verificar si es una copia nuestra anterior (misma checksum) o un override del usuario
            if cmp -s "$global_file" "$dest_file"; then
                # Es nuestra copia anterior, igual → no hacer nada
                continue
            else
                echo "   ⚠️  Saltando $rel_to_root (usando versión local)"
                continue
            fi
        fi

        # Si es un symlink viejo, eliminarlo
        if [ -L "$dest_file" ]; then
            rm "$dest_file"
        fi

        # Crear directorio de destino
        mkdir -p "$dest_dir"
        
        # Copiar archivo
        cp -p "$global_file" "$dest_file"
    done
}

sync_global_includes() {
    sync_global_dir "$1" "_includes"
}

sync_global_assets() {
    sync_global_dir "$1" "assets"
}
