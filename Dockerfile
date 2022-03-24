FROM quay.io/vektorcloud/glibc:2.35

ENV JAVA_HOME /usr/lib/jvm/default-jvm
ENV PATH "$PATH:/usr/lib/jvm/default-jvm/bin:/usr/lib/jvm/default-jvm/jre/bin/"

ENV SBT_VERSION 0.13.18
ENV SBT_URL https://github.com/sbt/sbt/releases/download/v${SBT_VERSION}/sbt-${SBT_VERSION}.tgz

RUN apk add --no-cache openjdk8 openjdk8-jre make bash curl openrc git ca-certificates libressl && \
    curl -sL $SBT_URL | tar -zx -C /usr/local && \
    ln -s /usr/local/sbt/bin/sbt /usr/local/bin/sbt && \
    chmod 0755 /usr/local/bin/sbt
