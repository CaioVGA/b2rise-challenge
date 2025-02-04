FROM postgres:13-alpine

COPY src/step2/create_tables.sql /docker-entrypoint-initdb.d/