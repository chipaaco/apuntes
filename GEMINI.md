# Apuntes (Monorepo Jekyll)

Colección apuntes universitarios publicados vía GitHub Pages. Tecnología: Jekyll, Ruby.

## Estructura
- `sites/`: Sub-sitios (materias). Cada uno Jekyll independiente.
- `_global/`: Configuración y assets compartidos.
  - `_global/config.yml`: Configuración base para todos los sub-sitios.
- `scripts/`: Automatización (build, dev).
- `_site_output/`: Salida compilada (debe estar en repo para gh-pages).

## Comandos

### Desarrollo
`bash scripts/dev.sh <materia>` (hot reload + vigilancia config).

### Compilación
- `bash scripts/build-changed.sh`: Compila solo sitios con cambios detectados (Git).
- `bash scripts/build-all.sh`: Compila todo.

### Setup
`bash scripts/setup-jekyll.sh` (instala ruby, jekyll, bundler).

## Convenciones
- `sites/<materia>/_config.yml`: **Crítico**. Definir `baseurl: "/apuntes/<materia>"` para rutas assets/links correctas. Sobreescribe valores de `_global/config.yml`.
- Sincronización: Scripts `scripts/` sincronizan automáticamente `_includes` y `assets` desde `_global/` al compilar/desarrollar.
