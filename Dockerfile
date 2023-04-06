FROM rust:alpine3.16
WORKDIR /bot/
RUN chmod 777 /bot/
COPY start.sh .
CMD ["bash","start.sh"]
