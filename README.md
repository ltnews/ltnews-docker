# ltnews-docker
Arquitectura virtualizada de LT-News

# Instalación

```bash
git clone https://github.com/ltnews/ltnews-frontend.git vuejs/ltnews-frontend
git clone https://github.com/ltnews/ltnews-backend.git django/ltnews-backend
docker-compose down; docker-compose up --build
```

## Desarrollo

```bash
docker-compose down; docker-compose up --build
```

## Producción

```bash
docker-compose down; docker-compose -f docker-compose.yml -f docker-compose.prod.yml up --build
```

# Referencias
- [Dockerizing a Full-stack Application](https://medium.com/@matthew.rosendin/dockerizing-a-full-stack-application-89a7d69e11e9)
- [Quickstart: Compose and Django](https://docs.docker.com/compose/django/)
- [Dockerize Vue.js App](https://vuejs.org/v2/cookbook/dockerize-vuejs-app.html)
- [Don’t install Postgres. Docker pull Postgres](https://hackernoon.com/dont-install-postgres-docker-pull-postgres-bee20e200198)
- [Using Docker compose to setup a simple Django/PostgreSQL application](https://medium.com/@michealjroberts/using-docker-compose-to-setup-a-simple-django-postgresql-application-46cb22521286)
- [Share Compose configurations between files and projects](https://docs.docker.com/compose/extends/)
- [Docker Compose from development to production](https://medium.com/softonic-eng/docker-compose-from-development-to-production-88000124a57c)
- [Django development with Docker —A completed development cycle](https://blog.devartis.com/django-development-with-docker-a-completed-development-cycle-7322ad8ba508)
- [Django Development with Docker Compose and Machine](https://realpython.com/django-development-with-docker-compose-and-machine/)
- [How to deploy Django with Docker](https://www.stavros.io/posts/how-deploy-django-docker/)
- [Enabling Hot-Reloading with vuejs and vue-cli in Docker](https://daten-und-bass.io/blog/enabling-hot-reloading-with-vuejs-and-vue-cli-in-docker/)