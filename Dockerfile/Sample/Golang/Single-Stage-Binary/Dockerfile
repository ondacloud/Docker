FROM golang:alpine
WORKDIR /app
COPY app.go .
RUN apk upgrade --no-cache && apk add --no-cache curl && chmod +x token
EXPOSE 8080
CMD ["./app"]