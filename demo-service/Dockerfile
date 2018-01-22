FROM alpine

ENV BUILD_VERSION=v0.1
COPY /demo.sh /
RUN apk --no-cache add netcat-openbsd

CMD ["/demo.sh"]

