FROM ubuntu:18.04 AS builder

WORKDIR /root/tor
VOLUME ["/root/tor"]

WORKDIR /mkp224o
RUN apt -qq update && \
    apt -qq install libsodium-dev autoconf git ca-certificates build-essential -y --no-install-recommends

RUN git clone https://github.com/cathugger/mkp224o.git .
RUN ./autogen.sh
RUN ./configure
RUN make

CMD ./mkp224o -d /root/tor/ -n 2 -B
