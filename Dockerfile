FROM       scratch
MAINTAINER 1science Devops Team <devops@1science.org>

ADD ./rootfs.tar.xz /

ADD ./root /
RUN apk update && apk upgrade

# Base packages useful for other containers
RUN apk-install curl wget bash tree

# Set build history
RUN echo -ne "Alpine Linux 3.1 image. (`uname -rsv`)\n" >> /root/.built

CMD ["/bin/bash"]
