FROM alpine:3

RUN apk --no-cache add postgresql15-client py3-pip && \
    pip install --break-system-packages s3cmd

COPY backup /usr/local/bin/

ENV PGHOST= PGPORT=5432 PGUSER= PGPASSWORD= PGDATABASE= ODOO_DATA_DIR=/var/lib/odoo S3_ENDPOINT= S3_ACCESS_KEY= S3_SECRET_KEY= S3_BUCKET=

CMD [ "backup" ]