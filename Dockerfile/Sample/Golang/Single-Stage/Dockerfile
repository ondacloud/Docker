FROM golang:alpine

WORKDIR /app
COPY ./app.go .
RUN apk upgrade --no-cache && apk add --no-cache curl && go mod init noah.io/ark/rest && go build app.go
EXPOSE 8080

CMD ["./app"]