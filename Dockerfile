FROM centos:centos7

RUN yum group install "Development Tools" -y

ENTRYPOINT [ "bin/bash" ]
