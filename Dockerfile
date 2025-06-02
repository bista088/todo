FROM python:3.11.12-slim-bullseye
RUN apt -y update && apt -y install pkg-config gcc python3-dev default-libmysqlclient-dev && rm -rf /var/lib/apt/lists*
COPY . /opt
WORKDIR /opt
RUN pip install -r requirements.txt
EXPOSE 9001
CMD ["python3" ,"app/manage.py","runserver","0.0.0.0:9001" ]
