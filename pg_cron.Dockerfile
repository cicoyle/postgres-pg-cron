FROM postgres:14.3

ARG PSQL_Version="14"

RUN apt update && \
    apt install -y postgresql-${PSQL_Version}-cron

ADD entrypoint.sh /

CMD ["/entrypoint.sh"]
