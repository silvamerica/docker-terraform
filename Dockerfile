FROM gliderlabs/alpine:3.1
MAINTAINER lajos.papp@sequenceiq.com

RUN apk-install curl

RUN curl -Lko /tmp/terra.zip https://dl.bintray.com/mitchellh/terraform/terraform_0.3.6_linux_amd64.zip \
    && cd /usr/local/bin \
    && unzip /tmp/terra.zip \
    && rm -rf /tmp/terra.zip

VOLUME /data
WORKDIR /data

CMD ["/usr/local/bin/terraform"]

