FROM python:3.8

ENV PYTHONUNBUFFERED=1

RUN mkdir /code

WORKDIR /code

COPY . /code
EXPOSE 8000
RUN pip install -r requirements.txt

RUN python manage.py createsuperuser --noinput --username $DJANGO_SUPERUSER_USERNAME --email $DJANGO_SUPERUSER_EMAIL

