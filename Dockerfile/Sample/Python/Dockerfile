FROM python:3.14-alpine

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app
COPY ./main.py /app/main.py

RUN apk add --no-cache curl && pip install --no-cache-dir flask gunicorn && rm -rf /root/.cache/

RUN adduser -D --disabled-password --gecos '' app-user
USER app-user

EXPOSE 8080
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "main:app"]