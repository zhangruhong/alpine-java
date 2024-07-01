FROM azul/zulu-openjdk-alpine:17.0.10-jdk

MAINTAINER xxx@xxx.com

RUN echo "http://mirrors.aliyun.com/alpine/v3.19/main" > /etc/apk/repositories \
    && echo "http://mirrors.aliyun.com/alpine/v3.19/community" >> /etc/apk/repositories \
    && apk update upgrade \
    && apk add --no-cache procps unzip curl bash tzdata \
    && apk add ttf-dejavu \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone
