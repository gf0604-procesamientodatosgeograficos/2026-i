# Datos del Sistema Nacional de Áreas de Conservación (SINAC)

## areas-conservacion.gpkg

Polígonos de las 11 áreas de conservación administrativas de Costa Rica, descargados del geoservicio Web Feature Service (WFS) del [Patrimonio Natural del Estado](http://geos1pne.sirefor.go.cr/) del SINAC.

- Capa fuente: `PNE:areas_conservacion`.
- CRS de salida: WGS84 (EPSG:4326), para alinear con el resto de capas vectoriales del libro.
- Campos: `gml_id`, `objectid`, `codigo_ac`, `nombre_ac`, `siglas_ac`, `regmplan`, `decreto`, `area_ha`, `shape_leng`, `shape_area`, `SHAPE`.

Fecha de descarga: 2026-05-24.

### Comando de descarga

```bash
ogr2ogr \
  -f GPKG \
  -t_srs EPSG:4326 \
  -nln areas_conservacion \
  areas-conservacion.gpkg \
  "WFS:http://geos1pne.sirefor.go.cr/wfs?VERSION=2.0.0" \
  PNE:areas_conservacion
```
