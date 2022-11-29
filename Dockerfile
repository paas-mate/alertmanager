FROM shoothzj/base

WORKDIR /opt

ARG version=0.24.0
ARG TARGETARCH

RUN wget https://github.com/prometheus/alertmanager/releases/download/v$version/alertmanager-$version.linux-$TARGETARCH.tar.gz  && \
mkdir -p alertmanager && \
tar -xf alertmanager-$version.linux-$TARGETARCH.tar.gz -C alertmanager --strip-components 1 && \
rm -rf alertmanager-$version.linux-$TARGETARCH.tar.gz

ENV ALERTMANAGER_HOME /opt/alertmanager

WORKDIR /opt/alertmanager
