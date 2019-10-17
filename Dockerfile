FROM quay.io/vektorcloud/openjdk:latest

ENV SBT_VERSION 0.13.15
ENV SBT_URL http://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz

RUN apk add --no-cache make bash curl openrc git ca-certificates libressl && \
    curl -sL $SBT_URL | tar -zx -C /usr/local && \
    ln -s /usr/local/sbt/bin/sbt /usr/local/bin/sbt && \
    chmod 0755 /usr/local/bin/sbt
