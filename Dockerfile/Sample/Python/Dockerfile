FROM python:3.12-alpine
WORKDIR /app
COPY app.py .
RUN pip3 install --no-cache-dir flask &&  apk add --no-cache curl && rm -rf /root/.cache/
RUN adduser --disabled-password --gecos '' app-user && chown -R app-user: /app
USER app-user
EXPOSE 8080
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=8080"]