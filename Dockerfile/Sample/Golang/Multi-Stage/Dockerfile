FROM golang:alpine AS builder
ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64

WORKDIR /build
COPY go.mod go.sum app.go ./
RUN go mod download && go build -o app .
WORKDIR /dist
RUN cp /build/app .

FROM scratch
COPY --from=builder /dist/app .
EXPOSE 8080
ENTRYPOINT ["/app"]