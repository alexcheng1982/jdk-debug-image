#!/bin/sh
set -e

ulimit -c unlimited

exec "$@"
