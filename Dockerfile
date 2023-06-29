FROM python:3.11.2-slim
ENV PYTHONUNBUFFERED 1

RUN set -x && \
    apt-get update && \
    pip install -U pip

COPY ./requirements ./requirements

RUN pip install --no-cache-dir -r requirements/requirements.txt

RUN set -x && \
    rm -rf /var/lib/apt/lists/*

COPY ./src /app

WORKDIR /app
