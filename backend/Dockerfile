# Stolen from https://fernandofreitasalves.com/dockerizing-django-for-development/
# Feel free to expand where required
FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /srv
WORKDIR /srv
# Installing OS Dependencies
RUN apt-get update && apt-get upgrade -y && apt-get install -y libsqlite3-dev
RUN pip install -U pip setuptools virtualenv
COPY requirements /srv
COPY bootstrap.py /srv
RUN python3 bootstrap.py dev
ADD . /srv
# Django service
EXPOSE 8000
