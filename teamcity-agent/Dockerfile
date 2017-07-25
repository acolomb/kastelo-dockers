FROM jetbrains/teamcity-minimal-agent
MAINTAINER Jakob Borg <jakob@nym.se>

RUN apt-get update && apt-get install -y --no-install-recommends docker.io \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

