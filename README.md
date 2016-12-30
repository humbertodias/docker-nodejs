# ¿Qué es?

Servicio de NodeJS con Docker usando AlpineLinux.


# Prerrequisitos

1. [Docker](https://www.docker.com) 1.12+
2. [VirtualBox](www.virtualbox.org) 5.0+ (Necesario sólo para Mac o Windows)

# Cómo empezar

Construir

```
docker build -t docker-nodejs .
```

Correndo

```
docker run -p 49160:8080 -d docker-nodejs
```

Por último, en su navegador 

```
localhost:49160
```

Respuesta

```
Node.JS con Docker!
```

# Acceso remoto

```
docker run -t -i docker-nodejs /bin/sh
```

```
/usr/src/app #
```

# Cómo detener

Tome el ID del CONTENEDOR

```
docker ps
```

```
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                     NAMES
01f01ec765e6        docker-nodejs       "node /usr/src/app/ap"   5 minutes ago       Up 4 minutes        0.0.0.0:49160->8080/tcp   sick_lovelace
```

Parada

```
docker stop 01f01ec765e6
```

o

Destruyendo

```
docker rm 01f01ec765e6
```

# ¿Cuanto cuesta?

Sólo ~36MB!

Dónde:

Paquete | MB
--- | ---
AlpineLinux | 4
NodeJS | 32

Mostrar docker imágenes

```
docker images
```

```
REPOSITORY            TAG                 IMAGE ID            CREATED             SIZE
docker-nodejs         latest              fc1aaeddb391        18 minutes ago      36.31 MB
```

# Referencias

1. [www.docker.com](https://www.docker.com)

2. [hub.docker.com](https://hub.docker.com)

3. [alpinelinux.org](https://alpinelinux.org)

4. [nodejs.org](https://nodejs.org/en/docs/guides/nodejs-docker-webapp/)