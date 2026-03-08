# CLAUDE.md - Convenciones del proyecto

## Idioma
- Todo el contenido, comentarios de código y mensajes de commit deben estar en **español** (Costa Rica).
- Los nombres de variables y funciones en R siguen el estilo `snake_case`.

## Stack tecnológico
- **Quarto book** (`_quarto.yml`): libro con 16 capítulos `.qmd`, salida HTML en `docs/`.
- **R** (4.5.x): paquetes principales incluyen tidyverse, sf, terra, tmap, ggplot2, plotly, DT, gt.
- **Docker**: imagen base `rocker/geospatial:4.5.2`. Archivo `Dockerfile` en la raíz.

## Estructura del proyecto
```
├── _quarto.yml           # Configuración del libro Quarto
├── index.qmd             # Página de bienvenida
├── 01-..16-*.qmd         # Capítulos del libro
├── Dockerfile            # Imagen Docker con R y paquetes
├── datos/                # Conjuntos de datos (CSV, GPKG, TIF, etc.)
├── img/                  # Imágenes referenciadas en los capítulos
├── scratch/              # Archivos auxiliares (Scratch .sb3)
├── docs/                 # Salida renderizada (GitHub Pages)
├── gf0604-...-g001.pdf   # Programa del curso (grupo 1)
├── gf0604-...-g002.pdf   # Programa del curso (grupo 2)
├── referencias.bib       # Bibliografía BibTeX
├── apa-6th-edition.csl   # Estilo de citas
└── 2026-i.Rproj          # Proyecto RStudio
```

## Comandos clave
```shell
# Renderizar el libro completo
quarto render

# Vista previa en desarrollo
quarto preview

# Construir imagen Docker
docker build -t gf0604-2026-i .

# Ejecutar contenedor Docker
docker run -d --name gf0604-2026-i -p 8787:8787 \
  -v ~/gf0604-procesamientodatosgeograficos/2026-i/git/2026-i:/home/rstudio \
  --env-file ~/gf0604-2026-i.env gf0604-2026-i
```

## Convenciones
- Las URLs de datos apuntan a `github.com/gf0604-procesamientodatosgeograficos/2026-i/`.
- Los capítulos se nombran con prefijo numérico: `01-`, `02-`, ..., `16-`.
- El contenido renderizado se publica en GitHub Pages desde la carpeta `docs/` en la rama `main`.
- No modificar referencias a repos de proyecto separados (ej. `2025-i-mundo-mascota`, `2025-i-analisis-distribucion-felidos`) hasta que se actualicen esos repos.
