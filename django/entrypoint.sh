python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser --email andjimrio@alum.us.es --username andjimrio
python manage.py collectstatic
gunicorn project.wsgi -b 0.0.0.0:8000