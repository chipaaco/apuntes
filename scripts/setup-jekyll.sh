#!/usr/bin/env bash
# ===========================================================
# setup-jekyll.sh — Instala Ruby, Jekyll y Bundler en WSL/Ubuntu
# Fuente: https://jekyllrb.com/docs/installation/ubuntu/
#
# INSTRUCCIONES: Leer todo el script antes de ejecutarlo.
# Ejecutar con: bash scripts/setup-jekyll.sh
# ===========================================================

set -euo pipefail

echo "=== [1/4] Instalando dependencias del sistema ==="
echo "Se instalarán: ruby-full build-essential zlib1g-dev"
echo ""
sudo apt-get update
sudo apt-get install -y ruby-full build-essential zlib1g-dev

echo ""
echo "=== [2/4] Configurando directorio de gems para el usuario ==="
echo "Se agregarán variables de entorno a ~/.bashrc"
echo ""

# Solo agregar si no existen ya
if ! grep -q 'GEM_HOME' ~/.bashrc; then
    echo '' >> ~/.bashrc
    echo '# Ruby Gems — Instalados en ~/gems (no requiere sudo)' >> ~/.bashrc
    echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
    echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
    echo "Variables agregadas a ~/.bashrc"
else
    echo "Las variables de entorno ya existen en ~/.bashrc, saltando..."
fi

# Aplicar para la sesión actual
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

echo ""
echo "=== [3/4] Instalando Jekyll y Bundler ==="
gem install jekyll bundler

echo ""
echo "=== [4/4] Verificando instalación ==="
echo "Ruby:    $(ruby --version)"
echo "Jekyll:  $(jekyll --version)"
echo "Bundler: $(bundler --version)"

echo ""
echo "✅ Instalación completada."
echo "⚠️  Ejecutá 'source ~/.bashrc' o abrí una nueva terminal para que las variables surtan efecto."
