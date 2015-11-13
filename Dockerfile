#
# 1science Alpine Linux image
#

FROM alpine:3.1
MAINTAINER 1science Devops Team <devops@1science.org>

# Consul template and fileconsul for configuration management 
ENV CONSUL_TEMPLATE_VERSION=0.11.0 FILECONSUL_VERSION=0.1.1

# Install S6 (init system)
ADD s6-2.0.0.1.tar.gz /
RUN mkdir -p /var/spool/cron/crontabs 

# Install default setup
ADD ./root /

# Install base packages
RUN mkdir -p /var/spool/cron/crontabs /usr/local/sbin && \
    apk update && apk upgrade && \
    apk-install curl wget bash tree gawk jq && \
    curl -Ls https://github.com/hashicorp/consul-template/releases/download/v${CONSUL_TEMPLATE_VERSION}/consul_template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip -o consul-template.zip && unzip consul-template.zip -d /usr/local/sbin && \
    curl -Ls http://dl.bintray.com/foostan/fileconsul/${FILECONSUL_VERSION}_linux_amd64.zip -o fileconsul.zip && unzip fileconsul.zip -d /usr/local/sbin && \ 
    rm -f fileconsul.zip consul-template* && \
    echo -ne "Alpine Linux 3.1 image. (`uname -rsv`)\n" >> /root/.built

# Define bash as default command
CMD ["/bin/bash"]
