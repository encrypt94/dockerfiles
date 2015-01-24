FROM ubuntu:latest
MAINTAINER encrypt <encrypt@labr.xyz>

RUN apt-get update && \
    apt-get install -y tmux

RUN useradd user -m -G sudo && \
    echo "user:default" | chpasswd

USER user

CMD ["/bin/bash"]