# Tarea 3 – Grupo 1 {.unnumbered}

**Fecha y hora límite de entrega:**  
Jueves 14 de mayo a las 11:59 p.m. a través de Mediación Virtual.

**Esta tarea es estrictamente individual. Cada persona estudiante puede consultar los materiales del curso y también recursos externos (ej. tutoriales, videos) para resolverla, pero debe ser capaz de demostrar que es la autora o el autor de la solución entregada y de explicarla detalladamente en caso de que el profesor lo solicite.**

---

## Descripción

A partir del **mismo conjunto de datos en formato CSV** utilizado en la Tarea 2, desarrolle un documento Quarto que presente una **tabla interactiva** y **tres gráficos estadísticos**. La tabla debe programarse con el paquete `DT` y los gráficos con `ggplot2`, convertidos a interactivos mediante la función `ggplotly()` del paquete `plotly`. El documento renderizado en HTML debe publicarse en **GitHub Pages**.

---

## Objetivos

Cada estudiante debe mostrar que es capaz de:

- Crear documentos reproducibles con Quarto.
- Versionar archivos con Git y publicar sitios estáticos en GitHub Pages.
- Construir tablas interactivas con `DT::datatable()`.
- Programar gráficos estadísticos con `ggplot2`.
- Convertir gráficos de `ggplot2` en gráficos interactivos con `plotly::ggplotly()`.
- Aplicar operaciones de filtrado y agrupación con verbos de `dplyr` (`filter()`, `group_by()`, `summarize()`, `count()`, entre otros).

---

## Requisitos

### 1. Conjunto de datos
- Utilice **el mismo archivo CSV** entregado en la Tarea 2.
- El archivo CSV debe quedar incluido en el repositorio del proyecto.

### 2. Documento Quarto
- Cree un documento Quarto llamado **`index.qmd`** con salida HTML.
- Al inicio del documento incluya el **nombre del conjunto de datos**, la **fuente** (con URL), una **descripción breve** y la **cantidad de filas y columnas**.
- El documento debe renderizarse correctamente a un archivo **`index.html`** acompañado de su directorio **`index_files/`**.

### 3. Carga de los datos
- Cargue el archivo CSV con la función **`read_csv()`** del paquete `readr` (parte de tidyverse), de modo que sea coherente con el uso de `dplyr` y `ggplot2` en el resto del documento.

### 4. Tabla interactiva con `DT`
- Muestre el conjunto de datos (o un subconjunto de columnas relevantes) en una tabla interactiva mediante **`DT::datatable()`**.
- La tabla debe permitir **paginación**, **búsqueda** y **ordenamiento** por columna.

### 5. Gráficos con `ggplot2` + `ggplotly()`
- Genere **3 gráficos**, programados con `ggplot2` y convertidos a interactivos con `plotly::ggplotly()`. Cada gráfico puede ser de cualquiera de los cinco tipos cubiertos en el capítulo 10 del libro del curso:
  - Gráfico de dispersión: `geom_point()`
  - Histograma: `geom_histogram()`
  - Gráfico de pastel: `geom_bar(stat = "identity", width = 1)` junto con `coord_polar()`
  - Gráfico de barras: `geom_bar()` o `geom_col()`
  - Diagrama de caja: `geom_boxplot()`
- Cada gráfico debe tener:
  - Un **título** descriptivo.
  - **Etiquetas** apropiadas en los ejes.
  - **Colores** definidos por el estudiante (no únicamente los predeterminados).
- Los **gráficos 1 y 2** deben ser de **tipo diferente** y mostrar **variables distintas**. Pueden corresponder a los mismos gráficos entregados en la Tarea 2, siempre que ahora se programen con `ggplot2` y se conviertan con `ggplotly()`.
- El **gráfico 3** debe elaborarse a partir del resultado de la operación con `dplyr` descrita en la siguiente sección.

### 6. Operación de filtrado o agrupación con `dplyr`
- Antes de generar el tercer gráfico, aplique al menos una operación con verbos de `dplyr`:
  - **Filtrado** con `filter()` y expresiones lógicas, o
  - **Agrupación** con `group_by()` seguida de `summarize()`, o `count()`.
- El propósito de la operación debe ser análogo al del criterio 5 de la Tarea 2 (subconjunto o agrupación), pero ahora programado al estilo tidyverse.

### 7. Publicación en GitHub Pages
- Cree un **repositorio público en GitHub** para esta tarea.
- Configure **GitHub Pages** para servir el sitio desde la rama `main`. Puede elegir entre publicar desde la **raíz del repositorio** o desde la carpeta **`/docs`**, según le resulte más cómodo.
- El sitio publicado debe ser **accesible públicamente** mediante una URL del tipo `https://<usuario>.github.io/<repositorio>/`.

---

## Entregables

A través de Mediación Virtual, cada estudiante debe entregar:

1. La **URL del sitio publicado** en GitHub Pages.
2. La **URL del repositorio** en GitHub.

El repositorio debe contener al menos los siguientes archivos:

- `index.qmd` — el documento fuente Quarto.
- `index.html` — el documento renderizado.
- El archivo **CSV** con el conjunto de datos.
- El directorio **`index_files/`** generado por Quarto al renderizar.

---

## Rúbrica de evaluación

| Criterio | Descripción | Puntos |
|---|---|---:|
| **Documento Quarto** | El archivo `index.qmd` está bien estructurado; configurado para el idioma español; con una tabla de contenidos; incluye al inicio el nombre del conjunto de datos, su fuente, descripción, cantidad de filas y de columnas; y se renderiza correctamente a `index.html`. | 10 |
| **Tabla interactiva con `DT`** | El conjunto de datos se muestra en una tabla generada con `DT::datatable()` que permite paginación, búsqueda y ordenamiento. | 15 |
| **Gráfico 1** | Generado con `ggplot2` y convertido con `ggplotly()`. Tiene título, etiquetas en los ejes, colores y muestra un aspecto interesante del conjunto de datos. | 15 |
| **Gráfico 2** | Generado con `ggplot2` y convertido con `ggplotly()`. Es de un tipo distinto al gráfico 1, muestra variables diferentes y cumple con título, etiquetas y colores. | 15 |
| **Operación con `dplyr`** | Se aplica correctamente al menos una operación de filtrado (`filter()`) o de agrupación (`group_by() |> summarize()`, `count()`). | 10 |
| **Gráfico 3** | Generado con `ggplot2` y convertido con `ggplotly()`, a partir del resultado de la operación con `dplyr`. Cumple con título, etiquetas y colores. | 15 |
| **Publicación en GitHub Pages** | El sitio está publicado y la URL entregada es accesible públicamente. | 10 |
| **Repositorio** | El repositorio contiene `index.qmd`, `index.html`, el archivo CSV y el directorio `index_files/`. | 10 |
| **Total** | | **100** |
