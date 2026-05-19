# Datos del INEC

## `poblacion-cantones-2022.csv`

Población total por cantón en Costa Rica, según la *Estimación de Población
y Vivienda 2022* del Instituto Nacional de Estadística y Censos (INEC).

- Fuente original: archivo XLSX
  [Resultados Estimación de Población y Vivienda 2022](https://admin.inec.cr/sites/default/files/2023-11/reResultadosEstimacionPoblacionVivienda2022_3.xlsx),
  publicado por el INEC en su sitio oficial
  <https://inec.cr/estimaciones-poblacion-vivienda-2022>.
- Hoja utilizada: `11` (Cuadro 11, *Población total por sexo, total de viviendas
  y promedio de ocupantes, por provincia, cantón y distrito, 2022*).
- Total nacional: **5 044 197 habitantes** (coincide con la cifra oficial
  publicada por el INEC).
- Cobertura: los 82 cantones de la División Territorial Administrativa (DTA)
  vigente al 2022, incluyendo *Río Cuarto* (cantón 216 de Alajuela, creado en
  2017).

### Estructura

| Columna     | Tipo    | Descripción                                                                 |
|-------------|---------|------------------------------------------------------------------------------|
| `cod_canton`| entero  | Código DTA del cantón (compatible con la capa `cantones-2020-simplificados`).|
| `canton`    | texto   | Nombre del cantón (según IGN, 2020).                                         |
| `provincia` | texto   | Nombre de la provincia.                                                      |
| `poblacion` | entero  | Población total estimada al 2022.                                            |

### Notas sobre la normalización de nombres

Los nombres de los cantones del archivo INEC se ajustaron a los nombres
oficiales del Instituto Geográfico Nacional (IGN) usados en
`datos/ign/cantones-2020-simplificados.gpkg`. Las diferencias detectadas y
homologadas fueron:

- INEC `Vásquez de Coronado` → IGN `Vázquez de Coronado` (cantón 111).
- INEC `León Cortés` → IGN `León Cortés Castro` (cantón 120).
