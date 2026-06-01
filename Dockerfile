FROM python:3.12-slim

WORKDIR /usr/dbt_src

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY kings_county_dbt_project/ ./kings_county_dbt_project/