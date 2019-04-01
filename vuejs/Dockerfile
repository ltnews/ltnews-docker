FROM node:lts-alpine

RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
COPY everis.crt /usr/local/share/ca-certificates/everis.crt
RUN update-ca-certificates
RUN npm config set registry http://registry.npmjs.org/

# install simple http server for serving static content
RUN npm install -g http-server

# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY ltnews-frontend/package*.json ./

# install project dependencies
RUN npm install

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY ltnews-frontend/ .

# build app for production with minification
RUN npm run build

EXPOSE 8080
CMD [ "http-server", "dist" ]