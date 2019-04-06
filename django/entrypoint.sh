#!/bin/bash
python manage.py migrate
python manage.py collectstatic --noinput

/etc/ltnews-crontab.sh &
gunicorn ltnews.wsgi -b 0.0.0.0:8000