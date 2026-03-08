# GF-0604 Procesamiento de datos geográficos 2026-i

## Contenedor Docker

### Construcción y ejecución

```shell
# Construcción del contenedor Docker
docker build -t gf0604-2026-i .

# Ejecución del contenedor Docker
# (el directorio local debe especificarse en la opción -v)

docker run -d --name gf0604-2026-i \
  -p 8787:8787 \
  -v ~/gf0604-procesamientodatosgeograficos/2026-i/git/2026-i:/home/rstudio \
  --env-file ~/gf0604-2026-i.env \
  gf0604-2026-i
```

### Acceso

[http://localhost:8787](http://localhost:8787)

### Detención y borrado

```shell
# Detención del contenedor Docker
docker stop gf0604-2026-i

# Borrado del contenedor Docker
docker rm gf0604-2026-i
```

### Ejemplo de contenido del archivo `~/gf0604-2026-i.env`

```shell
# Clave para ingresar a RStudio
PASSWORD=gf0604
```
