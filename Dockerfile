FROM stackbrew/ubuntu:saucy
MAINTAINER EB <medusis+rrrr@gmail.com>

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y wget git build-essential libtool autotools-dev\
    automake make cmake clang libprotobuf-c0 libprotobuf-c0-dev libwebsocket-dev

RUN git clone https://github.com/Medusis/rrrr.git /rrrr

WORKDIR /rrrr
RUN make clean && make
