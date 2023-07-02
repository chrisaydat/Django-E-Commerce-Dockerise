FROM python:3.9


ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


RUN pip3 install django Pillow


COPY . /app/


WORKDIR /app


EXPOSE 5000


CMD [ "python3", "/app/babyshop_app/manage.py", "runserver", "--host=0.0.0.0"]