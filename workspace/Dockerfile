FROM ubuntu:22.04

RUN sed -i "s/ports.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list && apt-get update

RUN apt-get -y install git vim ripgrep net-tools curl wget

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN curl -fLo ~/.vimrc --create-dirs https://raw.githubusercontent.com/kuizhiqing/etc/main/vim/vimrc # update

RUN vim +'PlugInstall --sync' +qa # no cache

RUN apt-get -y install python3 python3-dev python3-pip
