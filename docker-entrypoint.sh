#!/bin/sh
set -e

ulimit -c unlimited

JAVA_OPTS="${JAVA_OPTS:-}"

if [ "${1#-}" != "$1" ]; then
  exec java $JAVA_OPTS "$@"
fi

if [ "$1" = "java" ]; then
  shift
  exec java $JAVA_OPTS "$@"
fi

exec "$@"
