FROM node:lts-alpine

RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
COPY everis.crt /usr/local/share/ca-certificates/everis.crt
RUN update-ca-certificates

RUN npm config set registry http://registry.npmjs.org/

# Environment
ARG NODE_ENV=production
ENV NODE_ENV=$NODE_ENV
ENV CHOKIDAR_USEPOLLING true

# install vue cli
RUN yarn global add @vue/cli

# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY ltnews-frontend/package*.json ./
COPY ltnews-frontend/yarn.lock ./

# install project dependencies
RUN yarn install

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY ltnews-frontend/ .

# build app for production with minification
RUN yarn build --no-clean

# Expose port 8080 in the container and detect the changes in hot-reload
EXPOSE 8080

# Copy the entrypoint
ARG entrypoint=entrypoint.sh
COPY $entrypoint /etc/entrypoint.sh
ENTRYPOINT [ "sh", "/etc/entrypoint.sh" ]