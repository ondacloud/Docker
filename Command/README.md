## Docker Command

### Docker image command
---
**build**
```shell
docker build -t <image name> .
```
Dockerfile을 사용하여 Docker image를 생성할 때 사용합니다.

<br>

images
```shell
docker images
```
Docker image를 조회할 때 사용합니다.

**rmi**
```shell
Docker rmi <docker image id or docker image name>
```
생성한 Docker image를 삭제할 때 사용합니다.

<br>

**tag**
```shell
docker tag <image name>:<tag> <image name>:<tag>
```
생성한 Docker image에 tag를 추가할 때 사용합니다.

<br>

**push**
```shell
docker push <image name>:<tag>
```
생성한 Docker image를 registry에 업로드 할 때 사용합니다.

<br>

**pull**
```shell
dockr pull <name>:<tag>
```
registry에 업로드 된 docker image를 불러올 때 사용합니다.

<br>

## Docker container command
---
**run**
```shell
docker run <option> <image name>
```
컨테이너를 실행할 때 사용합니다.

<br>

**log**
```shell
docker logs <container id>
```
컨테이너에서 실행되는 appllication의 log를 확인할 때 사용합니다.

<br>

**exec**
```shell
docker exec <option> <container id> <commnd>
```
실행 중인 컨테이너에 명령어를 전달합니다.

<br>

**stop**
```shell
docker stop <contaienr id>
```
컨테이너를 멈출 때 사용합니다.

**rm**
```shell
docker rm <container id>
```
실행중인 컨테이너를 삭제할 때 사용합니다.

<br>

### Delete All Docker command
---
**Delete All Docker image**
```shell
docker rmi $(docker images -q)
```

<br>

**Delete All Docker container**
```shell
docker rm $(docker ps -aq)
```

**Delete force All Docker image**
```shell
docker rmi -f $(docker images -q)
```

**Delete force All Docker container**
```shell
docker rm -f $(docker ps -aq)
```