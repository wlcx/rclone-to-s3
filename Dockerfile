FROM alpine:latest

RUN apk upgrade --no-cache \
  &&  echo  https://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories \
  && apk add --no-cache gpg ca-certificates rclone bash

WORKDIR /s3

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
