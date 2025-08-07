FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV GIT_VERSION=3.5a

RUN apt-get update \
    && apt-get install -y --no-install-recommends --allow-change-held-packages \
        git automake gcc make pkg-config autoconf automake libtool libevent-dev \
        yacc libncurses5-dev libncursesw5-dev ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

WORKDIR /tmp

RUN git clone https://github.com/tmux/tmux.git && cd tmux && \
    git checkout $GIT_VERSION && \
    sh ./autogen.sh && autoreconf -i && ./configure && make
