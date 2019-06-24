FROM mqadvanced-server:9.1.2.0-amd64
USER root
RUN useradd admin -G mqm && \
    echo admin:passw0rd | chpasswd
USER mqm
COPY 20-BaseMQConfig.mqsc /etc/mqm/
