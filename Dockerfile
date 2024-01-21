FROM alpine:3.19

# Update
RUN apk add --update nodejs npm

# Cria a pasta da app
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Instala as dependencias da app
COPY package.json /usr/src/app/
RUN npm install

# copia a app
COPY . /usr/src/app
EXPOSE 8080
CMD ["node", "/usr/src/app/app.js"]