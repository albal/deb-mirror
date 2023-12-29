FROM debian:11
RUN apt-get update -q \
  && \
    apt install -y -qq apt-mirror \
  && \
    apt-get autoremove \
  && \
    rm -rf /var/cache/apt/* \
  && \
    mkdir -p /mnt/mirror/debian \
  && \
    touch /var/log/cron.log 
COPY mirror.list /etc/apt/mirror.list
COPY entrypoint.sh /opt/entrypoint.sh
RUN mkdir -p /mirror
RUN chmod u+x /opt/entrypoint.sh
ENTRYPOINT ["/opt/entrypoint.sh"]
