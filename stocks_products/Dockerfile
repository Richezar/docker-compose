FROM python:3.12-alpine

WORKDIR /stocks_products

COPY requirements.txt /stocks_products/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /stocks_products/