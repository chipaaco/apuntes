# Apuntes

Monorepo de apuntes universitarios publicados en [GitHub Pages](https://chipaaco.github.io/apuntes/).

## Sub-sitios

| Materia | URL | Source |
|---------|-----|--------|
| Arquitectura de Computadores | [Link](https://chipaaco.github.io/apuntes/arquitectura/) | `sites/arquitectura/` |
| Sistemas Operativos | [Link](https://chipaaco.github.io/apuntes/sistemas-operativos/) | `sites/sistemas-operativos/` |

## Flujo de trabajo

1. Editar contenido en `sites/<materia>/`
2. Compilar localmente: `bash scripts/build-changed.sh`
3. Commit y push (incluir `_site_output/`)
4. GitHub Actions publica automáticamente

## Setup inicial

```bash
bash scripts/setup-jekyll.sh
source ~/.bashrc
```

## Agregar un nuevo sub-sitio

1. Copiar un directorio existente de `sites/`
2. Modificar `_config.yml`: cambiar `title`, `description`, `baseurl`
3. Compilar: `bash scripts/build-changed.sh <nombre>`
4. Actualizar este README
