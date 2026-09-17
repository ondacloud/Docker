FROM golang:alpine
WORKDIR ./app
COPY --chmod=755 ./main .
RUN apk upgrade --no-cache && apk add --no-cache curl
EXPOSE 8080
CMD ["./main"]