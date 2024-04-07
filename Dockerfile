# https://hub.docker.com/_/python
FROM python:3.10-slim-bullseye

ARG OPENAI_API_KEY
ENV OPENAI_API_KEY ${OPENAI_API_KEY}
ENV PYTHONUNBUFFERED True
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY summary_app/requirements.txt ./
RUN pip install -r requirements.txt


COPY summary_app ./


CMD ["uvicorn", "run:app", "--host", "0.0.0.0", "--port", "8080"]
