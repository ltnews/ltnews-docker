#!/bin/bash
/etc/ltnews-crontab.sh &
python manage.py runserver 0.0.0.0:8000