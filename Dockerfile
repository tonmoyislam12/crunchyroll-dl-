FROM rust:alpine3.16
WORKDIR /bot/
RUN chmod 777 /bot/
RUN apk update && apk --no-cache add zlib-dev zlib-static curl-dev curl-static openssl-dev openssl-libs-static freeimage freeimage-dev unzip tar xz wget \
    c-ares-dev c-ares-static sqlite-dev sqlite-static  libsodium-dev libsodium-static && apk add alpine-sdk git libtool autoconf automake linux-headers musl-dev m4 \
    build-base perl ca-certificates python3
COPY start.sh .
CMD ["ash","start.sh"]
