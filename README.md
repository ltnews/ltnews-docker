# ltnews-docker
Arquitectura virtualizada de LT-News

# Instalación

```bash
git clone https://github.com/ltnews/ltnews-frontend.git vuejs/ltnews-frontend
git clone https://github.com/ltnews/ltnews-backend.git django/ltnews-backend
docker-compose down; docker-compose up --build
```

# Referencias
- [Dockerizing a Full-stack Application](https://medium.com/@matthew.rosendin/dockerizing-a-full-stack-application-89a7d69e11e9)
- [Quickstart: Compose and Django](https://docs.docker.com/compose/django/)
- [Dockerize Vue.js App](https://vuejs.org/v2/cookbook/dockerize-vuejs-app.html)
- [Don’t install Postgres. Docker pull Postgres](https://hackernoon.com/dont-install-postgres-docker-pull-postgres-bee20e200198)
- [Using Docker compose to setup a simple Django/PostgreSQL application](https://medium.com/@michealjroberts/using-docker-compose-to-setup-a-simple-django-postgresql-application-46cb22521286)