FROM registry.baidubce.com/kuizhiqing/workspace:x86_64

RUN apt-get update && apt-get -y install python3 python3-dev python3-pip
RUN ln -s /usr/bin/python3 /usr/local/bin/python

RUN wget https://go.dev/dl/go1.19.11.linux-amd64.tar.gz && tar -C /usr/local -xzf *.tar.gz && rm -rf *.tar.gz
RUN echo "export PATH=$PATH:/usr/local/go/bin" >> /root/.bashrc

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install openjdk-11-jdk-headless
