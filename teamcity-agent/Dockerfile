FROM jetbrains/teamcity-minimal-agent
MAINTAINER Jakob Borg <jakob@nym.se>

ENV GO_VERSION 1.13.8

# Install required packages

RUN apt-get update && apt-get install -y --no-install-recommends \
	build-essential zip git mercurial graphviz \
	ca-certificates curl fakeroot rubygems ruby-dev rpm \
	snapcraft docker.io ansible openssh-client \
	libffi-dev apt-transport-https gnupg osslsigncode \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

RUN gem install --no-ri --no-rdoc fpm

# Install Go

RUN curl -sSL https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz \
	| tar -C /usr/local -xz

# Use Go

ENV PATH /usr/local/go/bin:$PATH
ENV GOPATH /usr/local

