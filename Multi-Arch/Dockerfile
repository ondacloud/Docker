FROM --platform=$BUILDPLATFORM golang:1.22-alpine AS builder

WORKDIR /build

ARG TARGETOS
ARG TARGETARCH
ENV CGO_ENABLED=0

COPY ./main.go ./

RUN go mod init noah.io/ark/rest && go mod tidy

RUN --mount=type=cache,target=/root/.cache/go-build \
    GOOS=$TARGETOS \
    GOARCH=$TARGETARCH \
    go build -trimpath -buildvcs=false -ldflags="-s -w" -o main main.go

FROM alpine:3.20

WORKDIR /app

RUN apk add --no-cache curl

COPY --from=builder /build/main .

EXPOSE 8080
ENTRYPOINT ["/app/main"]