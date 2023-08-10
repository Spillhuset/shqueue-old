# pull official base image
FROM python:3.10-alpine

# set work directory
WORKDIR /app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apk update \
    && apk add gcc python3-dev musl-dev \
    && apk add --no-cache mariadb-dev

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# copy project
COPY . .

WORKDIR /app/shqueue

RUN python3 manage.py collectstatic --noinput
ENV STATIC_ROOT=/app/shqueue/static_built
