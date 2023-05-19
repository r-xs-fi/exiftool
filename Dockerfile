FROM alpine:latest

WORKDIR /workspace

ENTRYPOINT ["/usr/bin/exiftool"]

RUN apk add --no-cache exiftool

# run as unprivileged user
USER 1000:1000
