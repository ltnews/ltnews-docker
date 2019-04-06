#!/bin/bash

#https://stackoverflow.com/questions/43925487/how-to-run-gunicorn-on-docker
python manage.py makemigrations
python manage.py migrate
python manage.py shell -c "from django.contrib.auth.models import User; User.objects.create_superuser('andjimrio', 'andjimrio@alum.us.es', 'andjimrio')"
#python manage.py createsuperuser --email andjimrio@alum.us.es --username andjimrio --noinput
python manage.py collectstatic --noinput
python manage.py runserver 0.0.0.0:8000
#gunicorn ltnews.wsgi -b 0.0.0.0:8000