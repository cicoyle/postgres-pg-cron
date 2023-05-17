#!/bin/bash

if [ -z "${PG_CRON_DB_NAME}" ]; then
    PG_CRON_DB_NAME='postgres'
fi

echo "using pg_cron database_name $PG_CRON_DB_NAME"

exec docker-entrypoint.sh -c cron.database_name=${PG_CRON_DB_NAME} -c shared_preload_libraries=pg_cron
