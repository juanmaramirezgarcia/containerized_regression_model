FROM python:3.10

WORKDIR /app

ADD ./model ./model
ADD app.py app.py
ADD requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 5000

CMD [ "gunicorn", "--bind", "0.0.0.0:5000", "app:app" ]
