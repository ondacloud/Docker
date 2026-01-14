FROM golang:alpine

WORKDIR /app

ENV ENDPOINT=<ENDPOINT>
ENV USERNAME=<USER>
ENV PASSWORD=<PASSWORD>
ENV DATABASE=<DATABASE>

COPY ./main.go .
RUN apk upgrade --no-cache && apk add --no-cache curl && go mod init noah.io/ark/rest && go get github.com/gin-gonic/gin && go build -o main main.go
EXPOSE 8080

CMD ["./main"]