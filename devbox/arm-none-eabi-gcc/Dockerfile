FROM base/archlinux

RUN pacman-key --init && \
    pacman-key --refresh-keys && \
    pacman -Syu --noconfirm && \
    pacman-db-upgrade

RUN pacman -S --noconfirm arm-none-eabi-gcc \
        	      	  arm-none-eabi-newlib \
		      	  gcc \
			  python2 \
			  make
