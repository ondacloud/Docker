## Dockerfile Command

### Install Package
```docker
RUN apk add --no-cache curl
```

### Add User on Alpine
```docker
RUN adduser --disabled-password --gecos '' app-user && chown -R app-user: /app
USER app-user
```

### Add User on Debian
```docker
RUN useradd -m -s /bin/bash app-user && chown -R app-user:app-user /app
USER app-user
```

### Install Package on pip3
```docker
pip3 install --no-cache-dir flask
```

### Optimization Image
```docker
RUN apk upgrade --no-cache && rm -rf /root/.cache/
```