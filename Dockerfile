FROM rust:alpine3.16
WORKDIR /bot/
RUN chmod 777 /bot/
RUN apk update && apk add git
COPY start.sh .
CMD ["bash","start.sh"]
