#
# 1science Alpine Linux image
#

FROM alpine:3.1
MAINTAINER 1science Devops Team <devops@1science.org>

ADD ./root /

RUN apk update && apk upgrade && \
apk-install curl wget bash tree && \
echo -ne "Alpine Linux 3.1 image. (`uname -rsv`)\n" >> /root/.built

CMD ["/bin/bash"]