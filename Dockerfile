FROM mqadvanced-server:latest
USER root
RUN useradd admin -G mqm \
  && groupadd mqclient \
  && useradd app -G mqclient \
  && echo admin:passw0rd | chpasswd
USER mqm
COPY 20-BaseMQConfig.mqsc /etc/mqm/
