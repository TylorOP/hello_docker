#!/bin/bash

# Wait for the MySQL database to be ready
until mysqladmin ping -h mysql --silent -uroot -proot; do
    echo "Waiting for MySQL database to be ready..."
    sleep 1
done

# Create the superuser
python manage.py createsuperuser --noinput \
    --username "$DJANGO_SUPERUSER_USERNAME" \
    --email "$DJANGO_SUPERUSER_EMAIL" \
    --password "$DJANGO_SUPERUSER_PASSWORD"
