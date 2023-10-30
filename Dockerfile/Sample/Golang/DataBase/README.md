Dockerfile - DataBase
---
```docker
FROM golang:alpine

WORKDIR /app

ENV RDS_ENDPOINT=<ENDPOINT>
ENV RDS_USERNAME=<User>
ENV RDS_PASSWORD=<Password>
ENV RDS_DATABASE=<DataBase>

COPY . .
RUN apk add --no-cache curl
RUN go mod init app
RUN go get github.com/gin-gonic/gin
RUN go get <Package>
RUN go build -o app
EXPOSE <Port>

CMD ["./app"]
```