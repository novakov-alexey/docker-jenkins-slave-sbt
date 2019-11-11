# This Dockerfile is used to build an image containing an OpenJDK 8 jenkins slave with installed sbt for scala builds

FROM pcvolkmer/jenkins-slave-jdk8
MAINTAINER Alexey Novakov

ARG SBT_VERSION=1.3.3

RUN apt-get update && apt-get install bc

# Install sbt
RUN curl -sL "https://github.com/sbt/sbt/releases/download/v$SBT_VERSION/sbt-$SBT_VERSION.tgz" | gunzip | tar -x -C /usr/local && \
    ln -s /usr/local/sbt/bin/sbt /usr/local/bin

