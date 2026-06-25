# Proyecto final – Grupo 2 {.unnumbered}

**Fecha y hora límite de entrega:**  
Martes 7 de julio a las 11:59 p.m. a través de Mediación Virtual.

**El proyecto puede desarrollarse individualmente o en parejas. Cada persona estudiante puede consultar los materiales del curso y también recursos externos (ej. tutoriales, videos) para resolverlo, pero debe ser capaz de demostrar que es autora de la solución entregada y de explicarla detalladamente en caso de que el profesor lo solicite.**

---

## Descripción

Transforme el **tablero de control (*dashboard*)** que desarrolló en la **tarea 4** en una **aplicación web interactiva con Shiny**, en la que la persona usuaria filtre los datos mediante controles de entrada (*widgets*) y todas las visualizaciones (cajas de valor, mapa, gráficos y tabla) se actualicen de manera reactiva en respuesta a esos filtros. La aplicación debe **publicarse en [shinyapps.io](https://www.shinyapps.io/)**.

El proyecto cierra la línea de las tareas 2, 3 y 4: a las cajas de valor, los mapas, los gráficos estadísticos y las tablas del tablero de control se les añade ahora **interactividad del lado del servidor**, de modo que dejan de mostrar siempre las mismas visualizaciones y pasan a recalcularse según las selecciones de la persona usuaria.

---

## Objetivos

Cada persona estudiante o pareja debe mostrar que es capaz de:

- Convertir un tablero de control de Quarto Dashboards en una aplicación interactiva agregando `server: shiny`.
- Diseñar una interfaz de usuario con **controles de entrada** (`selectInput()`, `sliderInput()`, `checkboxInput()`, etc.) y **controles de salida** (`leafletOutput()`, `plotlyOutput()`, `dataTableOutput()`, etc.).
- Programar la lógica del servidor con **funciones reactivas** (`reactive()`) y funciones de generación de salidas (`render*()`).
- Compartir paquetes y datos entre la interfaz y el servidor mediante los contextos de bloque (`#| context: setup`, `#| context: data`, `#| context: server`).
- Publicar y mantener en línea una aplicación Shiny en un servidor en la nube (shinyapps.io).
- Versionar el código fuente con Git y alojarlo en un repositorio público de GitHub.

---

## Requisitos

### 1. Punto de partida y conjunto de datos
- El proyecto parte del **tablero de control de la tarea 4**. Puede usarse el **mismo conjunto de datos** de esa tarea o, si lo prefiere, mejorarse o sustituirse por otro, en formato vectorial o raster.
- Si se trabaja en parejas, puede tomarse como base el tablero de cualquiera de las dos personas integrantes.
- Se permite (y se valora) **mejorar** el tablero original: agregar visualizaciones, depurar el análisis, mejorar el diseño, etc.
- Los archivos de datos deben quedar incluidos en el repositorio del proyecto.

### 2. Documento Quarto con `server: shiny`
- Cree un documento Quarto llamado **`index.qmd`** con **`format: dashboard`** y **`server: shiny`** en el encabezado YAML.
- El documento debe tener un **título descriptivo**, estar configurado para el **idioma español** (`lang: es`) y organizar sus componentes en **filas y columnas** (opcionalmente también en páginas, pestañas o barras laterales).
- Use los **contextos de bloque** correctamente: `#| context: setup` para cargar paquetes, `#| context: data` para cargar y preparar los datos una sola vez, y `#| context: server` para la lógica reactiva.

### 3. Controles de entrada (interfaz)
- Incluya una **barra lateral** (`# {.sidebar}`) con al menos **dos controles de entrada** que permitan filtrar o configurar los datos (ej. `selectInput()` para una categoría y `sliderInput()` para un rango numérico o de años).
- Cada control debe tener un **identificador único** (`inputId`) y una **etiqueta** descriptiva.

### 4. Función reactiva
- Programe al menos una **función reactiva** con `reactive()` que aplique los filtros de la barra lateral sobre el conjunto de datos.
- Las salidas (cajas de valor, mapa, gráficos, tabla) deben **invocar esa función reactiva** —no repetir el filtrado en cada una—, de modo que al cambiar un control todas se actualicen automáticamente.

### 5. Cajas de valor reactivas
- Incluya al menos **tres cajas de valor (*value boxes*)** en una fila superior, cada una con **título**, **ícono** (de [Bootstrap Icons](https://icons.getbootstrap.com/)) y un **valor que se recalcule de forma reactiva** según los filtros (ej. cantidad de registros, número de categorías, total, promedio o máximo de la selección actual).
- Cada caja se reserva en la interfaz con la sintaxis `#| content: valuebox` (colocando un `textOutput()` como valor) y su contenido se genera en el servidor con `renderText()`, a partir de la función reactiva.

### 6. Mapa interactivo reactivo
- Incluya al menos **un mapa interactivo** (ej. con `leaflet`), generado en el servidor con `renderLeaflet()` y reservado en la interfaz con `leafletOutput()`.
- El mapa debe tener al menos una **capa base**, una **capa de datos** que dependa de la función reactiva, un **control de capas** y una **leyenda** (cuando corresponda).

### 7. Gráficos estadísticos interactivos reactivos
- Incluya al menos **dos gráficos estadísticos interactivos**, generados en el servidor con `renderPlotly()` y reservados con `plotlyOutput()`.
- Cada gráfico debe tener **título**, **etiquetas** en los ejes y **colores** definidos por el estudiante.
- Al menos **uno** de los gráficos debe depender de la función reactiva (mostrar el resultado del filtrado o de una operación de análisis sobre los datos filtrados).

### 8. Tabla interactiva reactiva
- Incluya al menos **una tabla interactiva**, generada en el servidor con `renderDataTable()` (o `renderDT()`) y reservada con `dataTableOutput()`, con **paginación**, **búsqueda** y **ordenamiento** por columna. La tabla debe reflejar los datos filtrados.

### 9. Operación de análisis
- Aplique al menos **una operación de análisis** sobre el conjunto de datos (ej. agrupación con `group_by()` + `summarize()`/`count()`, o filtrado con `filter()`), cuyo resultado se muestre en al menos una de las salidas reactivas.

### 10. Publicación en shinyapps.io
- Cree una cuenta gratuita en [shinyapps.io](https://www.shinyapps.io/) y **publique la aplicación** allí.
- La aplicación debe quedar **accesible públicamente** mediante una URL del tipo `https://<usuario>.shinyapps.io/<nombre-aplicacion>/` y **funcionar correctamente** (los filtros actualizan las salidas sin errores).

### 11. Repositorio en GitHub
- Cree un **repositorio público en GitHub** con el **código fuente** del proyecto (`index.qmd`, los archivos de datos y cualquier recurso necesario).
- A diferencia de las tareas anteriores, **no** se publica un sitio estático en GitHub Pages: la aplicación se sirve desde shinyapps.io. El repositorio guarda únicamente el código fuente versionado.

---

## Entregables

A través de Mediación Virtual debe entregarse:

1. La **URL de la aplicación publicada** en shinyapps.io.
2. La **URL del repositorio** en GitHub.

Si el proyecto se desarrolló en parejas, **solo una persona del equipo debe realizar la entrega**, indicando claramente los **nombres de ambas personas integrantes**.

---

## Rúbrica de evaluación

| Criterio | Descripción | Puntos |
|---|---|---:|
| **Documento Shiny** | `index.qmd` con `format: dashboard` y `server: shiny`; bien estructurado en filas y columnas; idioma español; título descriptivo; uso correcto de los contextos de bloque (`setup`, `data`, `server`); sin mensajes ni advertencias. | 12 |
| **Controles de entrada** | Barra lateral con al menos dos controles de entrada, cada uno con `inputId` y etiqueta descriptiva. | 8 |
| **Función reactiva** | Al menos una función reactiva (`reactive()`) que aplica los filtros y es compartida por las salidas. | 12 |
| **Cajas de valor reactivas** | Al menos tres cajas de valor, cada una con título, ícono y un valor que se recalcula reactivamente (`#| content: valuebox` + `textOutput()` / `renderText()`). | 10 |
| **Mapa interactivo reactivo** | Mapa generado con `renderLeaflet()`/`leafletOutput()`, con capa base, capa de datos reactiva, control de capas y leyenda. | 12 |
| **Gráfico 1** | Interactivo (`renderPlotly()`/`plotlyOutput()`), con título, etiquetas y colores. | 7 |
| **Gráfico 2** | Interactivo, con título, etiquetas y colores; depende de la función reactiva. | 7 |
| **Tabla interactiva reactiva** | Generada con `renderDataTable()`/`dataTableOutput()`, con paginación, búsqueda y ordenamiento; refleja los datos filtrados. | 10 |
| **Operación de análisis** | Se aplica correctamente al menos una operación de análisis cuyo resultado se muestra en una salida reactiva. | 5 |
| **Publicación en shinyapps.io** | La aplicación está publicada, es accesible públicamente y funciona correctamente. | 10 |
| **Repositorio** | El repositorio público contiene el código fuente (`index.qmd`) y los archivos de datos. | 7 |
| **Total** | | **100** |
