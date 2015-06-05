FROM gliderlabs/alpine:3.1
MAINTAINER nick@silvamerica.com

ENV TERRAFORM_VERSION 0.5.1

RUN apk-install ca-certificates

RUN wget http://dl.bintray.com/mitchellh/terraform/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
    -O /tmp/terraform.zip; \
    unzip /tmp/terraform.zip -d /usr/local/bin; \
    rm /tmp/terraform.zip

VOLUME /data
WORKDIR /data

ENTRYPOINT ["/usr/local/bin/terraform"]

CMD ["--help"]