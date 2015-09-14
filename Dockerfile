#
# 1science Alpine Linux image
#

FROM alpine:3.2
MAINTAINER 1science Devops Team <devops@1science.org>

# Install S6 (init system)
ADD s6-2.0.0.1.tar.gz /
RUN mkdir -p /var/spool/cron/crontabs

# Install default setup
ADD ./root /

# Install base packages
RUN apk update && apk upgrade && \
    apk-install curl wget bash tree jq && \
    echo -ne "Alpine Linux 3.2 image. (`uname -rsv`)\n" >> /root/.built

# Define bash as default command
CMD ["/bin/bash"]
