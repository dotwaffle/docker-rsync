FROM alpine:3
RUN apk add --no-cache rsync
EXPOSE 873
CMD ["/usr/bin/rsync", "--no-detach", "--daemon", "--log-file", "/dev/stdout", "--config", "/etc/rsyncd.conf"]
