FROM base/archlinux
MAINTAINER encrypt <encrypt@labr.xyz>

RUN pacman -Syu --noconfirm && \
    pacman-db-upgrade && \
    pacman -S --noconfirm tmux sudo

RUN echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers && \
    useradd user -m -G wheel && \
    echo "user:default" | chpasswd

USER user

CMD ["/bin/bash"]