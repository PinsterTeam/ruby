# vim:set ft=dockerfile:

FROM circleci/ruby:2.6.2-stretch-node

LABEL maintainer="Andrew Newell (PinsterTeam) <pinsterteam@gmail.com>"

USER root

RUN bash -c 'echo deb http://http.us.debian.org/debian/ testing non-free contrib main' >> /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -t testing libc6-dev postgresql-client-11 -y && \
    apt-get autoremove -y && \
    apt-get purge -y && \
    rm -rf /var/lib/apt/lists/*

