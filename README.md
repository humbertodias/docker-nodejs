# ¿Qué es?

Servicio NodeJS con Docker.


# Pre requisitos

1. [Docker](https://www.docker.com) 1.12+
2. [NodeJS](https://nodejs.org) 7.3+

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


# Referencias

[NodeJS.org](https://nodejs.org/en/docs/guides/nodejs-docker-webapp/)

[Docker.com](https://www.docker.com/)