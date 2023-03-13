FROM ubuntu:18.04

LABEL maintainer="Jenkins project" \
      org.label-schema.vendor="Jenkins project" \
      org.label-schema.name="Jenkins Agent" \
      org.label-schema.description="Jenkins agent with Docker" \
      org.label-schema.url="https://jenkins.io/" \
      org.label-schema.vcs-url="" \
      org.label-schema.version="4.3" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.docker.cmd="docker run -d -v /var/run/docker.sock:/var/run/docker.sock jenkins/agent:4.3-1"

RUN apt-get update && \
    apt-get -qy full-upgrade && \
    apt-get install -qy curl && \
    apt-get install -qy curl && \
    curl -sSL https://get.docker.com/ | sh