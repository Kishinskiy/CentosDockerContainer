FROM centos:centos7

RUN yum group install "Development Tools" -y
RUN yum install wget -y
RUN wget https://cmake.org/files/v3.5/cmake-3.5.2.tar.gz
RUN tar xvf cmake-3.5.2.tar.gz
RUN cd cmake-3.5.2 && \
./bootstrap --prefix=/usr && \
make && \
make install

WORKDIR /app

# ENTRYPOINT [ "bin/bash" ]
