[![](https://images.microbadger.com/badges/image/pcvolkmer/jenkins-slave-sbt.svg)](http://microbadger.com/images/pcvolkmer/jenkins-slave-sbt "Get your own image badge on microbadger.com")

# Introduction

Dockerfile to build a [Jenkins](https://jenkins-ci.org)-slave container image to be used with [Jenkins Docker Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Docker+Plugin)

# How to use this image

This image will be used by Jenkins Docker Plugin. It provides access via SSH for user "jenkins".

There is no need to start this image by your self. If you want to do so, use:

    docker run --name my-jenkins-slave pcvolkmer/jenkins-slave-sbt

# Packages installed

Based on official [OpenJDK 8 Docker image](https://registry.hub.docker.com/_/java/), this image contains Git, OpenSSH packages and [SBT](http://www.scala-sbt.org).
A user named "jenkins" with password "jenkins" is configured to be used with SSH.
