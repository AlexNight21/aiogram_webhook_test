FROM python:3.10.16-slim

ENV PYTHONUNBUFFERED=1

RUN apt-get update

WORKDIR /aio_webhook

COPY . .
RUN pip install -r requirements.txt