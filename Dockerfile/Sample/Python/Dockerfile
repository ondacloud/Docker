FROM python:3.11-alpine
WORKDIR /app
COPY app.py .
RUN pip3 install --no-cache-dir flask gunicorn &&  apk add --no-cache curl && rm -rf /root/.cache/
RUN adduser --disabled-password --gecos '' app-user && chown -R app-user: /app
USER app-user
EXPOSE 8080
# CMD ["gunicorn", "--bind 0.0.0.0:8080", "app:app"]