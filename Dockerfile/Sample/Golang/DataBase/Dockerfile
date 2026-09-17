FROM golang:alpine

WORKDIR /app

ENV DB_USER="<DB_USER>"
ENV DB_PASSWORD="<DB_PASSWORD>"
ENV DB_HOST="<DB_HOST>"
ENV DB_PORT="<DB_PORT>"
ENV DB_DBNAME="<DB_DBNAME>"

COPY ./main.go .
RUN apk upgrade --no-cache && apk add --no-cache curl && go mod init noah.io/ark/rest && go get github.com/gin-gonic/gin && go build -o main main.go
EXPOSE 8080

CMD ["./main"]