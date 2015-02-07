FROM       scratch
MAINTAINER Luis Lavena <luislavena@gmail.com>

ADD ./rootfs.tar.xz /

ADD ./root /
RUN apk update && apk upgrade

# Base packages useful for other containers
RUN apk-install curl wget bash tree

# Set build history
RUN echo -ne "Alpine Linux 3.1 image. (`uname -rsv`)\n" >> /root/.built

CMD ["/bin/bash"]
