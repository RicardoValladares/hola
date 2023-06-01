### Compilar

```bash
go build main.go
``` 

### Generar un portable AppImage

```bash
sh build.sh
``` 

### Correr en Docker

```bash
docker-compose up
``` 

### Subir Imagen Docker a GitHub

```bash
#export CR_PAT=tokencreadoengithub ; echo $CR_PAT | docker login ghcr.io -u RicardoValladares --password-stdin
export CR_PAT=YOUR_TOKEN ; echo $CR_PAT | docker login ghcr.io -u RicardoValladares --password-stdin
# docker tag nombreimagenmontada:version nuevonombre:version
docker tag hola_hola:latest ghcr.io/ricardovalladares/hola:latest
#subimos
docker push ghcr.io/ricardovalladares/hola:latest
```

### Descargar Imagen en Docker desde GitHub

```bash
docker pull ghcr.io/ricardovalladares/hola:latest
docker run ghcr.io/ricardovalladares/hola
```
