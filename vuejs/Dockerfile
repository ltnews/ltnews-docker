FROM node:lts-alpine

RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
COPY everis.crt /usr/local/share/ca-certificates/everis.crt
RUN update-ca-certificates

RUN npm config set registry http://registry.npmjs.org/

# make the 'app' folder the current working directory
WORKDIR /app

# Expose port 8080 in the container
EXPOSE 8080

# Copy the entrypoint
COPY entrypoint.sh /etc/entrypoint.sh
ENTRYPOINT [ "sh", "/etc/entrypoint.sh" ]