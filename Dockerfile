FROM elasticsearch:7.3.2

USER root
RUN yum install -y openssl unzip

COPY plugin.zip.enc /app/
COPY entrypoint.sh /app/

ENTRYPOINT ["/app/entrypoint.sh"]
