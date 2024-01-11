FROM library/archlinux

WORKDIR /root

RUN pacman -Syy && \
    pacman -S --noconfirm gcc base-devel

COPY main.c .
RUN gcc -O0 ./main.c && \
    cp ./a.out /usr/local/bin

COPY entrypoint.sh .
CMD [ "/root/entrypoint.sh" ]
