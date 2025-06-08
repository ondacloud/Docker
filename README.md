# Docker
---
### Content
- Nginx
- JAVA
- Python
- Golang

---
### Support Architecture
- x86_64
- aarch64 / arm64v8

---
### Install Docker
#### Amazon Linux2
```shell
yum install -y docker
systemctl enable --now docker
usermod -aG docker ec2-user
usermod -aG docker root
chmod 666 /var/run/docker.sock
```

#### Amazon Linux 2023
```shell
dnf install -y docker
systemctl enable --now docker
usermod -aG docker ec2-user
usermod -aG docker root
chmod 666 /var/run/docker.sock
```

#### Ubuntu
```shell
apt install -y docker
systemctl enable --now docker
usermod -aG docker ubuntu
chmod 666 /var/run/docker.sock
```

---
### Install Package
#### alpine - gcompat
```shell
apk add gcompat
```

#### alpine - curl
```shell
apk --no-cache add curl
```

#### ubuntu - ping
```shell
apt-get install iputils-ping
```