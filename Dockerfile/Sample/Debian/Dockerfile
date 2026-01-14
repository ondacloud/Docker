FROM debian:bookworm-slim

WORKDIR /app
RUN useradd -m -s /bin/bash match
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates curl && rm -rf /var/lib/apt/lists/*
COPY match /app/match
RUN chown match:match /app/match && chmod +x /app/match
USER match

ENTRYPOINT ["/app/match"]