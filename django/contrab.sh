#!/bin/bash
while true; do
    python /code/manage.py runcrons >> /code/cronjob.log
    sleep 60
done