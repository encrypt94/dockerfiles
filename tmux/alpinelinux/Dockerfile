FROM alpinelinux/base
MAINTAINER encrypt <encrypt@labr.xyz>

RUN apk update && \
    apk add tmux sudo

RUN adduser user -D && \
    echo "user:default" | chpasswd && \
    echo "user ALL=(ALL) ALL" >> /etc/sudoers

USER user

CMD ["/bin/bash"]
    