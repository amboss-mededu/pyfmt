FROM python:3.8.5-slim-buster
RUN pip install --no-cache-dir black==20.8b1 flake8==3.8.3 mypy==0.782