#!/bin/sh
set -e

host="$1"
shift

until PGPASSWORD=$POSTGRES_PASSWORD psql -h "$host" -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c '\q'; do
  >&2 echo "PostgreSQL não está disponível - aguardando..."
  sleep 1
done

>&2 echo "PostgreSQL está pronto"
exec "$@"