
FROM python:3.7-slim

ENV PYTHONUNBUFFERED 1

# Create app directory
WORKDIR /usr/src/app/

RUN apt-get update --fix-missing
RUN apt-get install python3-dev default-libmysqlclient-dev gcc  -y

# Bundle app source
COPY . .

# Install app dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN python manage.py migrate

# run server
EXPOSE 80
CMD python manage.py runserver 0.0.0.0:80

