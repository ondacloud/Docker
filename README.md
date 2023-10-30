# Docker
---
### Content
- Nginx
- Python
- Golang
- Alpine

---
### Support Architecture
- x86_64
- aarch64 / arm64v8

---
### Install Docker
#### Amazon Linux2
```
sudo yum install -y docker
sudo systemctl enable --now docker
sudo usermod -aG docker ec2-user
sudo usermod -aG docker root
sudo chmod 666 /var/run/docker.sock
```

#### Amazon Linux 2023
```
sudo dnf install -y docker
sudo systemctl enable --now docker
sudo usermod -aG docker ec2-user
sudo usermod -aG docker root
sudo chmod 666 /var/run/docker.sock
```

#### Ubuntu
```
sudo apt install -y docker
sudo systemctl enable --now docker
sudo usermod -aG docker ubuntu
sudo chmod 666 /var/run/docker.sock
```

---
### Install Package
#### alpine - gcompat
```
apk add gcompat
```

#### alpine - curl
```
apk --no-cache add curl
```

#### ubuntu - ping
```
sudo apt-get install iputils-ping
```