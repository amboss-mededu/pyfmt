FROM python:3.8.3-slim-buster
RUN pip install --no-cache-dir black==19.10b0 flake8==3.8.3 mypy==0.782