FROM buildpack-deps:jessie
MAINTAINER nick@silvamerica.com

RUN apt-get update && \
	apt-get install -y --no-install-recommends \
						unzip && \
	rm -rf /var/lib/apt/lists/*

ENV HASHI_PRODUCT terraform
ENV HASHI_VERSION 0.6.12

RUN curl -fsSL https://releases.hashicorp.com/${HASHI_PRODUCT}/${HASHI_VERSION}/${HASHI_PRODUCT}_${HASHI_VERSION}_linux_amd64.zip > /tmp/${HASHI_PRODUCT}.zip && \
		unzip /tmp/${HASHI_PRODUCT}.zip -d /usr/local/bin && \
		rm /tmp/${HASHI_PRODUCT}.zip

VOLUME /data
WORKDIR /data

ENTRYPOINT ["/usr/local/bin/terraform"]

CMD ["--help"]
