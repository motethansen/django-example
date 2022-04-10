Getting started with Django

If you already cloned this repository, you should create a virtual environment.

```
$ python3 -m venv venv && source venv/bin/activate
```
install the dependend packages
```
$ pip install --upgrade pip
$ pip install -r requirements.txt
```

To deploy and run you must setup the database

```
$ python manage.py makemigrations
```

will create tables

update tables from models by running migration 

```
$ python manage.py migrate
```

## Create Admin user

```
$ python manage.py createsuperuser
```

And run the app
```
$ python manage.py runserver
```
