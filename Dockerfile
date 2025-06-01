FROM python:3.11.12-slim-bullseye
RUN apt -y update && apt -y install pkg-config python3-dev gcc limbmysqlclient-dev
COPY. /opt
WORKDIR /opt
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 9001;
CMD ["python3" ,"app/manage.py","runserver","0.0.0.0:9001" ]
