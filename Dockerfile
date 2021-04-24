FROM archlinux:latest
ENV container docker
STOPSIGNAL SIGRTMIN+3
RUN pacman -Syy glibc systemd --noconfirm
VOLUME [ “/sys/fs/cgroup” ]
VOLUME [ “/sys/fs/fuse” ]
ENTRYPOINT [“/sbin/init”]
