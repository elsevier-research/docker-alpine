#
# 1science Alpine Linux image
#

FROM alpine:3.1
MAINTAINER 1science Devops Team <devops@1science.org>

ADD ./root /

# Install base packages
RUN apk update && apk upgrade && \
    apk-install curl wget bash tree && \
    echo -ne "Alpine Linux 3.1 image. (`uname -rsv`)\n" >> /root/.built

# Install S6 (init system)
ADD s6-2.0.0.1.tar.gz /
RUN mkdir -p /var/spool/cron/crontabs

CMD ["/bin/bash"]