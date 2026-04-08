# Tarea 2 – Grupo 1 {.unnumbered}

**Fecha y hora límite de entrega:**  
Miércoles 15 de abril a las 3:00 p.m. a través de Mediación Virtual.

**Esta tarea es estrictamente individual. Cada persona estudiante puede consultar los materiales del curso y también recursos externos (ej. tutoriales, videos) para resolverla, pero debe ser capaz de demostrar que es la autora o el autor de la solución entregada y de explicarla detalladamente en caso de que el profesor lo solicite.**

---

## Descripción

Seleccione un conjunto de datos en formato CSV. Escriba un programa (*script*) en R que lo importe, lo procese y genere gráficos estadísticos, guardándolos en un archivo PDF.

---

## Objetivos

Cada estudiante debe mostrar que es capaz de:

- Escribir código fuente en el lenguaje de programación R.
- Manejar proyectos, programas y datos en el ambiente de desarrollo integrado RStudio.
- Importar datos en formato CSV en R.
- Crear subconjuntos o agrupar datos con operadores y funciones del sistema base de R.
- Programar gráficos estadísticos con funciones del sistema base de R: `plot()`, `barplot()`, `pie()` e `hist()`.
- Generar salidas en formato PDF desde R.

---

## Requisitos

### 1. Selección del conjunto de datos
- El conjunto de datos debe estar en formato **CSV**. Si el archivo original está en otro formato (ej. XLSX, SHP, GPKG), puede exportarse a CSV.
- Debe provenir de una **fuente pública y confiable** (ver la sección de recomendaciones más abajo).
- Debe tener al menos **50 filas**.
- El conjunto de datos elegido **no debe ser uno utilizado en los materiales del curso** (ej. no usar `netflix_titles.csv`, `nhanes.csv`, `estacion_cigefi.csv`, `titanic_train.csv`).

### 2. Proyecto y script de R
- Cree un **proyecto de RStudio** para esta tarea.
- Cree un **script** con el código organizado y comentado.
- Al inicio del script, incluya **comentarios** que describan el conjunto de datos:
  - Nombre del conjunto de datos.
  - Fuente (URL de donde se descargó).
  - Descripción breve de lo que contiene.
  - Cantidad de filas y columnas.
- Por ejemplo:
  ```r
  # Conjunto de datos: "Meteoritos registrados por la NASA"
  # Fuente: https://data.nasa.gov/resource/gh4g-9sfh.csv
  # Descripción: registros de meteoritos caídos en la Tierra,
  #   con nombre, masa, año, tipo y coordenadas geográficas.
  # Filas: 45716 | Columnas: 10
  ```

### 3. Carga y exploración de los datos
- Cargue el archivo CSV con la función `read.csv()`.

### 4. Gráficos estadísticos
- Genere **3 gráficos**, utilizando funciones del sistema base de R:
  - Gráfico de barras: `barplot()`
  - Histograma: `hist()`
  - Gráfico de dispersión: `plot()`
  - Gráfico de pastel: `pie()`
- Cada gráfico debe tener:
  - Un **título** descriptivo (argumento `main`).
  - **Etiquetas** en los ejes (argumentos `xlab` y `ylab`).
  - **Colores** (argumento `col`).
- Los gráficos 1 y 2 deben ser de **tipo diferente** (ej. no presentar dos histogramas) y mostrar **variables distintas** (ej. no presentar un gráfico de barras y uno de pastel sobre las mismas categorías). Cada gráfico debe visualizar un aspecto interesante del conjunto de datos.
- El **gráfico 3** debe elaborarse con base en el resultado de la operación de subconjuntos o agrupación descrita en la sección 5.

### 5. Operación de subconjuntos o agrupación
- Antes de generar el tercer gráfico, aplique al menos una operación de **creación de subconjuntos** (filtrado de filas con `[]` y expresiones lógicas) o de **agrupación** (`aggregate()` o `table()`).
- El resultado de esta operación debe servir como insumo para el **gráfico 3**.
- Por ejemplo: si el conjunto de datos tiene datos de varios países, agrupar por continente con `aggregate()` y graficar el promedio por continente; o filtrar solo las filas de un país y graficar la distribución de una variable para ese subconjunto.

### 6. Generación del PDF
- Use las funciones `pdf()` y `dev.off()` para guardar todos los gráficos en un solo archivo PDF llamado **`tarea-02-graficos.pdf`**.

---

## Entregables

Cada estudiante debe entregar tres archivos:

1. El script de R con el código comentado.
2. El archivo CSV con el conjunto de datos elegido.
3. El archivo PDF con los gráficos, generado por el script.

---

## Recomendaciones de fuentes de datos

- [Kaggle Datasets](https://www.kaggle.com/datasets) — gran variedad de conjuntos de datos sobre múltiples temas.
- [Our World in Data (GitHub)](https://github.com/owid) — datos sobre salud, economía, medio ambiente, entre otros.
- [World Bank Data Catalog](https://datacatalog.worldbank.org/) — conjuntos de datos del Banco Mundial para descarga.
- [UCI Machine Learning Repository](https://archive.ics.uci.edu/) — conjuntos de datos clásicos para análisis.
- También puede utilizar datos de otras fuentes, como los relacionados con su **trabajo final de graduación (TFG)** o con la temática de **otro curso**, siempre que se cite la fuente.

---

## Rúbrica de evaluación

| Criterio | Descripción | Puntos |
|---|---|---:|
| **Selección del conjunto de datos** | El conjunto de datos cumple con los requisitos (CSV, al menos 50 filas, fuente pública) y la fuente está citada en los comentarios del script. | 10 |
| **Descripción del conjunto de datos** | Los comentarios al inicio del script describen adecuadamente el nombre, la fuente, el contenido, la cantidad de filas y de columnas del conjunto de datos. | 5 |
| **Importación** | El conjunto de datos se importa correctamente con `read.csv()`. | 10 |
| **Gráfico 1** | El gráfico es de un tipo adecuado para los datos, tiene título, etiquetas en los ejes, colores y muestra un aspecto interesante del conjunto de datos. | 15 |
| **Gráfico 2** | El gráfico es de un tipo diferente al gráfico 1, tiene título, etiquetas en los ejes, colores y muestra un aspecto diferente del conjunto de datos. | 15 |
| **Operación de subconjuntos o agrupación** | Se aplica correctamente una operación de creación de subconjuntos (filtrado con `[]` y expresiones lógicas) o de agrupación (`table()` o `aggregate()`). | 15 |
| **Gráfico 3** | El gráfico se elabora con base en el resultado de la operación de subconjuntos o agrupación, tiene título, etiquetas en los ejes y colores. | 15 |
| **Generación del PDF** | El programa genera correctamente un archivo PDF con los gráficos mediante `pdf()` y `dev.off()`. | 15 |
| **Total** | | **100** |
