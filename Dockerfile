FROM openjdk:8-alpine

RUN apk update && \
  apk add --no-cache curl && \
  apk add --no-cache bash

ENV TZ=Asia/Shanghai
ENV Dfile.encoding=utf-8

RUN mkdir /app
WORKDIR /app

COPY ./build/libs/spring-demo.jar /app
CMD ["/bin/sh", "-cx", "java -server -Djava.awt.headless=true -XX:-OmitStackTraceInFastThrow -Djava.security.egd=file:/dev/./urandom $JAVA_OPTS -jar /app/spring-demo.jar"]