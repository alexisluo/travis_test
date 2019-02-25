FROM python:3.6-alpine

RUN pip install Flask

ENV APP_DIR="/root/codelab"

COPY . $APP_DIR

WORKDIR $APP_DIR

EXPOSE 5000

ENTRYPOINT ["python","app.py"]