## Dockerfile

### Dockerfile Command
---

```
FORM
생성할 Docker image의 base를 뜻합니다.
```

<br>

```
MAINTAINER
image를 생성할 개발의 정보를 나타냅니다.
```

<br>

```
RUN
Shell에서 Command를 실행하는 것처럼 build과정에서 필요한 CMD를 실행하기 위해 사용됩니다.
```

<br>

```
ENTRYPOINT
image를 컨테이너로 띄울 때 항상 실행해야하는 Command를 지정합니다.
```

<br>

```
CMD
컨테이너가 시작될 때마다 실행할 명령어를 설정하며, Dockerfile에서 한번만 사용할 수 있습니다.
```

<br>

```
WORKDIR
컨테이너 상에서 작업 디렉토리로 전환을 위해서 사용됩니다.
```

<br>

```
ENV
컨테이너 안에서 사용할 환경변수를 지정합니다.
```

<br>

```
SHELL
명령을 실행할 떄의 기본 쉘을 설정합니다. 
```

<br>

```
USER
사용자를 선택해줍니다
```

<br>

```
VOLUME
컨테이너 안에 있는 휘발성 데이터들을 보존을 위해 사용됩니다.
설정한 컨테이너의 데이터들 호스트 OS에 저장하거나, 컨테이너간에 데이터가 공유가 가능합니다
```

<br>

```
LABEL
image에 정보를 입력해줍니다.
```

<br>

```
COPY
호스트에서 도커이미지 안으로 파일을 복사할 때 사용합니다
(호스트 파일 시작위치는 Dockerfile과 동일한 경로에서 시작합니다)
```

<br>

```
ADD
호스트에서 도커이미지 안으로 파일을 복사와 원격 다운로드 및 압축 기능 등에 사용합니다.
```
> **COPY와 ADD의 차이점**
동일한 동작을 수행하지만, ADD와 달리 COPY는 압축을 하지 못합니다.

<br>

### Dockerfile 기본형식
---
```
FROM <os>

RUN <command>
EXPOSE <port>

CMD ["<command>", "<command>"]
```