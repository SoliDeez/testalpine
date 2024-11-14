FROM alpine:latest

LABEL maintainer="vasiliy.volodchenko@umbrellait.com"

RUN apk update && apk upgrade

RUN apk add nginx

RUN apk add openjdk8

WORKDIR /etc/nginx/app

#RUN javac HttpServer.java jar cfe HttpServer.jar HttpServer HttpServer.class java -jar HttpServer.jar

COPY etc/nginx/ /etc/nginx/

#RUN /etc/nginx/app/compileserv.sh

RUN javac HttpServer.java && jar cfe HttpServer.jar HttpServer HttpServer.class

EXPOSE 80

VOLUME /etc/nginx/java-loc

CMD ["sh", "-c", "nginx -g  'daemon off;' | java -jar HttpServer.jar" ]