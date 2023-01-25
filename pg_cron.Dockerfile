FROM postgres:14.3

ARG PSQL_Version="14"

RUN apt update && \
    apt install -y postgresql-${PSQL_Version}-cron
CMD ["-c", "cron.database_name=hcp_waypoint_dev", "-c", "shared_preload_libraries=pg_cron"]
