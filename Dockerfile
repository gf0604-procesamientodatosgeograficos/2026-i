# Imagen de rocker/geospatial que se utiliza como base
FROM rocker/geospatial:4.5.2

# Clave para ingresar a RStudio Server
ENV PASSWORD=gf0604

# Puerto de RStudio Server
EXPOSE 8787

# Instalación del paquete here de R, versión 1.0.2
RUN R -e "devtools::install_version('here', version = '1.0.2', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete kableExtra de R, versión 1.4.0
RUN R -e "devtools::install_version('kableExtra', version = '1.4.0', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete gt de R, versión 1.3.0
RUN R -e "devtools::install_version('gt', version = '1.3.0', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete DT de R, versión 0.34.0
RUN R -e "devtools::install_version('DT', version = '0.34.0', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete ggthemes de R, versión 5.2.0
RUN R -e "devtools::install_version('ggthemes', version = '5.2.0', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete plotly de R, versión 4.12.0
RUN R -e "devtools::install_version('plotly', version = '4.12.0', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete dismo de R, versión 1.3-16
RUN R -e "devtools::install_version('dismo', version = '1.3-16', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete titanic de R, versión 0.1.0
RUN R -e "devtools::install_version('titanic', version = '0.1.0', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete palmerpenguins de R, versión 0.1.1
RUN R -e "devtools::install_version('palmerpenguins', version = '0.1.1', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete geodata de R, versión 0.6-6
RUN R -e "devtools::install_version('geodata', version = '0.6-6', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete rgbif de R, versión 3.8.4
RUN R -e "devtools::install_version('rgbif', version = '3.8.4', repos = 'http://cran.us.r-project.org')"
