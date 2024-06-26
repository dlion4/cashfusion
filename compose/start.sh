#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset


python manage.py collectstatic --noinput


python manage.py makemigrations --no-input

python manage.py migrate --no-input

python manage.py compress --force

python manage.py runserver 0.0.0.0:8200
