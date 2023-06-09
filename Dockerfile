FROM rust:alpine3.16
WORKDIR /bot/
RUN chmod 777 /bot/
RUN apk update && apk add git wget curl ffmpeg 
COPY start.sh .
CMD ["ash","start.sh"]
