FROM python:3.7.6-alpine3.11
RUN apk add --no-cache gcc musl-dev
RUN pip install --no-cache-dir black==19.10b0 flake8==3.8.3 mypy==0.782