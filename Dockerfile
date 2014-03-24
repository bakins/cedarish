FROM ubuntu:12.04
MAINTAINER bakins "brian@akins.org"
ENV DEBIAN_FRONTEND=noninteractive
ENV  LC_ALL=C
RUN mkdir /tmp/build
ADD ./stack/ /tmp/build
RUN cd /tmp/build && ./cedar.sh
RUN rm -rf /tmp/build