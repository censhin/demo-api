FROM python:3.6

ADD demo-api.py /srv/demo-api.py
ADD requirements.txt /srv/requirements.txt
WORKDIR /srv
RUN pip install -r requirements.txt
ENV FLASK_APP=demo-api.py

EXPOSE 5000
CMD flask run --host=0.0.0.0
