# Tarea 4 – Grupo 2 {.unnumbered}

**Fecha y hora límite de entrega:**  
Martes 23 de junio a las 11:59 p.m. a través de Mediación Virtual.

**Esta tarea puede desarrollarse individualmente o en parejas. Cada persona estudiante puede consultar los materiales del curso y también recursos externos (ej. tutoriales, videos) para resolverla, pero debe ser capaz de demostrar que es autora de la solución entregada y de explicarla detalladamente en caso de que el profesor lo solicite.**

---

## Descripción

Desarrolle un **tablero de control (*dashboard*)** con **Quarto Dashboards** que integre **cajas de valor (*value boxes*)**, al menos un **mapa interactivo**, al menos dos **gráficos estadísticos interactivos** y al menos una **tabla interactiva**. Esta tarea sigue la línea de las tareas 2 y 3: en este caso, se agregan mapas (a los gráficos estadísticos y a las tablas) y las visualizaciones se organizan en un formato de tablero de control. El tablero renderizado en HTML debe publicarse en **GitHub Pages**.

---

## Objetivos

Cada persona estudiante o pareja debe mostrar que es capaz de:

- Crear tableros de control con Quarto Dashboards (`format: dashboard`).
- Presentar datos y estadísticas en cajas de valor.
- Programar mapas interactivos con capas base y capas de datos (ej. con los paquetes `leaflet` o `tmap`).
- Construir gráficos estadísticos interactivos con `ggplot2` y `plotly`, y tablas interactivas con `DT`.
- Aplicar operaciones de análisis de datos: uniones (*joins*) espaciales o no espaciales, agrupación, filtrado, entre otras.
- Versionar archivos con Git y publicar sitios estáticos en GitHub Pages.

---

## Requisitos

### 1. Conjunto de datos
- Si cuenta con datos espaciales, puede usarse el **mismo conjunto de datos de las tareas anteriores** (o cualquiera de los que usó algún miembro del equipo, si se trabaja en parejas) o puede elegirse un **conjunto de datos diferente**, en formato vectorial o raster.
- También puede **complementarse** el conjunto de datos usado en las tareas anteriores (ej. un archivo CSV) con datos espaciales (ej. polígonos de países, provincias, cantones) mediante **uniones (*joins*) espaciales o no espaciales**.
- Los archivos de datos deben quedar incluidos en el repositorio del proyecto.

### 2. Tablero Quarto
- Cree un documento Quarto llamado **`index.qmd`** con **`format: dashboard`**.
- El tablero debe tener un **título descriptivo**, estar configurado para el **idioma español** y organizar sus componentes en **filas y columnas** (opcionalmente también en páginas, pestañas o barras laterales).
- El documento debe renderizarse correctamente a un archivo **`index.html`** acompañado de su directorio **`index_files/`**.

### 3. Cajas de valor
- Incluya al menos **tres cajas de valor** con datos o estadísticas representativas del conjunto de datos (ej. cantidad de registros, totales, promedios, máximos).
- Cada caja debe tener:
  - Un **título**.
  - Un **ícono** (de [Bootstrap Icons](https://icons.getbootstrap.com/)).
  - Un **valor**.

### 4. Mapa interactivo
- Incluya al menos **un mapa interactivo** (ej. programado con `leaflet` o con `tmap`) con:
  - Al menos una **capa base** (ej. OSM, ESRI World Imagery, CartoDB Positron).
  - Una **capa resultado de la operación de análisis** descrita en el requisito 7. Esta capa puede mostrarse, por ejemplo, como:
    - Capa de coropletas.
    - Capa de puntos agrupados (*clustering*).
    - Mapa de calor (*heatmap*).
- Debe incluirse un **control de capas** y una **leyenda** (cuando corresponda).

### 5. Gráficos estadísticos interactivos
- Incluya al menos **dos gráficos estadísticos interactivos**, con los mismos lineamientos de la tarea anterior: programados con `ggplot2` y convertidos con `plotly::ggplotly()` (o construidos directamente con `plot_ly()`, en el caso de los gráficos de pastel).
- Cada gráfico debe tener:
  - Un **título** descriptivo.
  - **Etiquetas** apropiadas en los ejes.
  - **Colores** definidos por el estudiante (no únicamente los predeterminados).
- Al menos **uno de los gráficos** debe mostrar el resultado de la operación de análisis descrita en el requisito 7.

### 6. Tabla interactiva
- Incluya al menos **una tabla interactiva**, con los mismos lineamientos de la tarea anterior: generada con **`DT::datatable()`** y con **paginación**, **búsqueda** y **ordenamiento** por columna.

### 7. Operación de análisis
- Aplique al menos **una operación de análisis** sobre el conjunto de datos, como por ejemplo:
  - **Agrupación** con `group_by()` seguida de `summarize()`, o `count()`.
  - **Filtrado** con `filter()` y expresiones lógicas.
- Al menos **una de las capas del mapa** y **uno de los gráficos** (como en la tarea anterior) deben mostrar el resultado de esa operación.

### 8. Publicación en GitHub Pages
- Cree un **repositorio público en GitHub** para esta tarea.
- Configure **GitHub Pages** para servir el sitio desde la rama `main`. Puede elegir entre publicar desde la **raíz del repositorio** o desde la carpeta **`/docs`**, según le resulte más cómodo.
- El sitio publicado debe ser **accesible públicamente** mediante una URL del tipo `https://<usuario>.github.io/<repositorio>/`.

---

## Entregables

A través de Mediación Virtual debe entregarse:

1. La **URL del sitio publicado** en GitHub Pages.
2. La **URL del repositorio** en GitHub.

Si la tarea se desarrolló en parejas, **solo una persona del equipo debe realizar la entrega**, indicando claramente los **nombres de ambas personas integrantes**.

El repositorio debe contener al menos los siguientes archivos:

- `index.qmd` — el documento fuente Quarto del tablero.
- `index.html` — el tablero renderizado.
- Los **archivos de datos** con el conjunto de datos.
- El directorio **`index_files/`** generado por Quarto al renderizar.

---

## Rúbrica de evaluación

| Criterio | Descripción | Puntos |
|---|---|---:|
| **Tablero Quarto** | El archivo `index.qmd` usa `format: dashboard`; está bien estructurado en filas y columnas; configurado para el idioma español; tiene un título descriptivo; se renderiza correctamente a `index.html`; y no despliega mensajes, advertencias u otros textos similares. | 10 |
| **Cajas de valor** | Hay al menos tres cajas de valor, cada una con título, ícono y un valor representativo del conjunto de datos. | 15 |
| **Mapa interactivo** | Hay al menos un mapa interactivo con al menos una capa base y una capa que muestra el resultado de la operación de análisis (ej. coropletas, puntos agrupados, mapa de calor). | 15 |
| **Operación de análisis** | Se aplica correctamente al menos una operación de análisis (ej. agrupación, filtrado). | 10 |
| **Gráfico 1** | Interactivo, con título, etiquetas en los ejes y colores, y muestra un aspecto interesante del conjunto de datos. | 10 |
| **Gráfico 2** | Interactivo, con título, etiquetas en los ejes y colores, y muestra el resultado de la operación de análisis. | 10 |
| **Tabla interactiva** | Generada con `DT::datatable()`, con paginación, búsqueda y ordenamiento. | 10 |
| **Publicación en GitHub Pages** | El sitio está publicado y la URL entregada es accesible públicamente. | 10 |
| **Repositorio** | El repositorio contiene `index.qmd`, `index.html`, los archivos de datos y el directorio `index_files/`. | 10 |
| **Total** | | **100** |
