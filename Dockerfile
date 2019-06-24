FROM mqadvanced-server:9.1.2.0-amd64
USER root
RUN useradd admin -G mqm \
  && groupadd mqclient \
  && useradd app -G mqclient \
  && echo admin:$MQ_ADMIN_PASSWORD | chpasswd
USER mqm
COPY 20-BaseMQConfig.mqsc /etc/mqm/
