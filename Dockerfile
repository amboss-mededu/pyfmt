FROM python:3.9.1-slim-buster
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt