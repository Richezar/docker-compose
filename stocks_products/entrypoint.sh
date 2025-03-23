python manage.py migrate

python manage.py collectstatic --noinput

exec gunicorn stocks_products.wsgi:application --bind 0.0.0.0:8000 --workers 3