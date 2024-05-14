FROM python:3.12.3


ENV PYTHONUNBUFFERED=1


ENV PYTHONDONTWRITEBYTECODE=1

WORKDIR /app

COPY ./requirements.txt /app

RUN pip install --upgrade pip

RUN pip install -r requirements.txt


COPY . /app

RUN python manage.py collectstatic --noinput

RUN python manage.py compress --force



RUN python manage.py makemigrations
RUN python manage.py migrate




