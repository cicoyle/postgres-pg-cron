# postgres-pg-cron

Dockerfile for Postgres with pg_cron installed on it easily made for consumption.

### Configuring

Environment variable `$PG_CRON_DATABSE_NAME`'s value is used as the value for the `cron.database_name` runtime parameter. Defaults to `postgres`

### Building

Build & push the image:
```shell
docker build -f pg_cron.Dockerfile -t cassie1coyle/postgres-pg-cron:dev .
docker push cassie1coyle/postgres-pg-cron:dev 
```

### Running

Run the container and login to the db:
```shell
docker run -e PG_CRON_DB_NAME=postgres -e POSTGRES_PASSWORD=password -p 5432:5432 postgres-pg-cron:dev
PGPASSWORD=password psql -h 127.0.0.1 -U postgres postgres
```

From inside the db you are able to run:
```shell
CREATE EXTENSION pg_cron;
SELECT * FROM pg_extension;
```
