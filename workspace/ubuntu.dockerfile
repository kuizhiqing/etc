FROM ubuntu:20.04

RUN sed -i "s/ports.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list \
    && sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list \
    && apt-get update

RUN apt-get -y install git vim ripgrep net-tools curl wget

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN curl -fLo ~/.vimrc --create-dirs https://raw.githubusercontent.com/kuizhiqing/etc/main/vim/vimrc # update

RUN vim +'PlugInstall --sync' +qa # no cache

RUN apt-get -y install python3 # python3-dev python3-pip

RUN curl -fLo ~/.git-prompt.sh --create-dirs https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
RUN curl -fLo ~/.git-completion.bash --create-dirs https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

RUN curl -fLo ~/.bashrc --create-dirs https://raw.githubusercontent.com/kuizhiqing/etc/main/bash/bashrc
