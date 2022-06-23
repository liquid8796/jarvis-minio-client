FROM heroku/heroku:16

ADD entrypoint.sh /entrypoint.sh

RUN mkdir -p /mnt/minio-client/data && \
    chmod +x /entrypoint.sh && \
    mkdir -m 777 /minio-client

CMD /entrypoint.sh
