#!/bin/sh
set -e

#exec su-exec $@
# Re-set permission to the `sphinx` user
# This avoids permission denied if the data volume is mounted by root
chown -R sphinx /build
exec su-exec sphinx make "$@"

