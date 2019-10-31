FROM elasticsearch:7.3.2

USER root

COPY plugin.zip.enc /app/
COPY entrypoint.sh /app/

RUN yum install -y openssl && yum clean all

ENTRYPOINT ["/app/entrypoint.sh"]
