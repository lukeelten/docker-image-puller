FROM python:alpine
MAINTAINER Kévin Darcel <kevin.darcel@gmail.com>

WORKDIR /usr/src/docker-image-updater

COPY app.py requirements.txt /usr/src/docker-image-updater/

RUN pip install --no-cache-dir -r requirements.txt && pip install --no-cache-dir redis

ENTRYPOINT ["python", "-u", "app.py"]
