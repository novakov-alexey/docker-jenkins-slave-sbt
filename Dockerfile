# This Dockerfile is used to build an image containing an OpenJDK 8 jenkins slave with installed sbt for scala builds

FROM pcvolkmer/jenkins-slave-jdk8
MAINTAINER Paul-Christian Volkmer <mail@pcvolkmer.de>

ENV SBT_VERSION 1.0.3

# Install sbt
RUN curl -sL "https://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz" | gunzip | tar -x -C /usr/local && \
    ln -s /usr/local/sbt/bin/sbt /usr/local/bin

