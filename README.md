# Apuntes

Monorepo de apuntes universitarios publicados en [GitHub Pages](https://chipaaco.github.io/apuntes/).

## Sub-sitios

| Materia | URL | Source |
|---------|-----|--------|
| Arquitectura de Computadores | [Link](https://chipaaco.github.io/apuntes/arquitectura/) | `sites/arquitectura/` |
| Física 1 (1/2) | [Link](https://chipaaco.github.io/apuntes/fisica-1/) | `sites/fisica-1/` |
| Algoritmos y Estructuras de Datos | [Link](https://chipaaco.github.io/apuntes/aed/) | `sites/aed/` |
| Álgebra y Geometría Analítica | [Link](https://chipaaco.github.io/apuntes/algebra/) | `sites/algebra/` |

## Flujo de trabajo

### Desarrollo (editar y ver en tiempo real)

```bash
bash scripts/dev.sh arquitectura
```

Esto lanza un servidor local con hot reload:
- Cambios a `.md` → recarga automática en el browser
- Cambios a `_config.yml` → restart automático del servidor

### Publicar

1. Compilar: `bash scripts/build-changed.sh`
2. Commit y push (incluir `_site_output/`)
3. GitHub Actions publica automáticamente

### Commit local

```bash
bash scripts/commit-all.sh
```

Stages all changes and creates a generic conventional commit without pushing.
After that, run: `git -C /home/chipi/workspace/github/chipaaco/apuntes push origin main`

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
