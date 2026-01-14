FROM golang:alpine
WORKDIR ./app
COPY ./main .
RUN apk upgrade --no-cache && apk add --no-cache curl && chmod +x main
EXPOSE 8080
CMD ["./main"]