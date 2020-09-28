FROM centos:centos7

RUN yum group install "Development Tools" -y
RUN yum install cmake gcc -y

# ENTRYPOINT [ "bin/bash" ]
