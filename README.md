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
sudo yum install -y docker
sudo systemctl enable --now docker
sudo usermod -aG docker ec2-user
sudo usermod -aG docker root
sudo chmod 666 /var/run/docker.sock
```

#### Amazon Linux 2023
```shell
sudo dnf install -y docker
sudo systemctl enable --now docker
sudo usermod -aG docker ec2-user
sudo usermod -aG docker root
sudo chmod 666 /var/run/docker.sock
```

#### Ubuntu
```shell
sudo apt install -y docker
sudo systemctl enable --now docker
sudo usermod -aG docker ubuntu
sudo chmod 666 /var/run/docker.sock
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