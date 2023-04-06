FROM rust:alpine3.16
WORKDIR /bot/
RUN chmod 777 /bot/
RUN apk update && apk --no-cache add alpine-sdk coreutils cmake linux-headers perl musl m4 sudo \
  gnutls-dev expat-dev sqlite-dev c-ares-dev cppunit-dev 
COPY start.sh .
CMD ["ash","start.sh"]
