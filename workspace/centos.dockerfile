FROM centos:7

RUN curl -fLo /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo \
    && sed -i -e '/mirrors.cloud.aliyuncs.com/d' -e '/mirrors.aliyuncs.com/d' /etc/yum.repos.d/CentOS-Base.repo \
    && yum clean all && yum makecache

RUN yum -y install git vim ripgrep net-tools curl wget

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN curl -fLo ~/.vimrc --create-dirs https://raw.githubusercontent.com/kuizhiqing/etc/main/vim/vimrc # update

RUN vim +'PlugInstall --sync' +qa # no cache

RUN yum -y install python3 # python3-dev python3-pip

RUN curl -fLo ~/.git-prompt.sh --create-dirs https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
RUN curl -fLo ~/.git-completion.bash --create-dirs https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

RUN curl -fLo ~/.bashrc --create-dirs https://raw.githubusercontent.com/kuizhiqing/etc/main/bash/bashrc
