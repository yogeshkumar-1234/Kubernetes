FROM python:3.10.12

WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r requirements.txt

COPY . /app/

EXPOSE 5000

CMD [ "python3","-m","flask","--app=hello","run","--host=0.0.0.0" ]