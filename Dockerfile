FROM python:latest

WORKDIR /app

COPY ./src ./
COPY ./requirements.txt ./

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "/app/src/server.py" ]