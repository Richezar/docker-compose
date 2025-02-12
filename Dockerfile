FROM python:3.9-slim

WORKDIR /stocks_products

COPY ./stocks_products /stocks_products

RUN pip install -r /stocks_products/requirements.txt

CMD ["sh", "-c", "sleep 10 && python manage.py migrate && gunicorn --bind 0.0.0.0:8000 stocks_products.wsgi:application"]
