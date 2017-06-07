FROM golang

RUN apt-get update && apt-get install -y --no-install-recommends \
        zip git mercurial \
	ca-certificates curl \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*
