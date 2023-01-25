# postgres-pg-cron

Dockerfile for Postgres with pg_cron installed on it easily made for consumption.

Build & push the image:
```shell
docker build -f pg_cron.Dockerfile -t cassie1coyle/postgres-pg-cron:dev .
docker push cassie1coyle/postgres-pg-cron:dev 
```

Run the container and login to the db:
```shell
docker run -e POSTGRES_PASSWORD=password -p 5432:5432 postgres-pg-cron:dev
PGPASSWORD=password psql -h 127.0.0.1 -U postgres hcp_waypoint_dev
```

From inside the db you are able to run:
```shell
CREATE EXTENSION pg_cron;
SELECT * FROM pg_extension;
```