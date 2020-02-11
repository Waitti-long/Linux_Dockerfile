FROM ubuntu:18.04

ADD ca-certificates.deb /tmp/
ADD openssl.deb /tmp/
ADD libssl1.1.deb /tmp/
ADD r2.deb /tmp/
ADD pwntools /tmp/pwntools/
RUN dpkg -i tmp/libssl1.1.deb \
    && dpkg -i tmp/openssl.deb \
    && dpkg -i tmp/ca-certificates.deb
ADD sources.list /etc/apt/
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y vim nano git python python3-pip python3-dev libssl-dev libffi-dev build-essential netcat \
    && apt-get install -y strace nasm virtualenvwrapper python3-venv\
    && python3 -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pip -U \
    && python3 -m pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple \
    && python3 -m pip install --upgrade /tmp/pwntools/ \
    && python3 -m pip install virtualenv \
    && python3 -m venv venv \
    && dpkg -i /tmp/r2.deb


CMD [ "/bin/bash" ]

