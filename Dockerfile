FROM alpine:latest

LABEL maintainer="example@mail.com"

RUN apk update && apk upgrade

RUN apk add nginx

RUN apk add openjdk8

WORKDIR /etc/nginx/app

COPY etc/nginx/ /etc/nginx/

RUN javac HttpServer.java && jar cfe HttpServer.jar HttpServer HttpServer.class

EXPOSE 80

VOLUME /etc/nginx/

CMD ["sh", "-c", "nginx -g  'daemon off;' | java -jar HttpServer.jar" ]