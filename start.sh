#!/bin/sh

SERVICE=server
if [ -n "$1" ] && [ "$1" != "--" ]; then
    SERVICE="$1"
    shift
fi

if [ "$1" = "--" ]; then
    shift
fi

set -xe

case $SERVICE in
  server)
    java -jar ./leshan-server-demo.jar "$@" ;;
  bootstrap|bsserver)
    java -jar ./leshan-bsserver-demo.jar "$@" ;;
  bsserver-rotkey)
    java -jar ../leshan-bsserver-rotkey/target/leshan-bsserver-rotkey-0.0.1-SNAPSHOT-jar-with-dependencies.jar "$@" ;;
  *)
    echo "Usage: <server|bootstrap>"
    exit 1
esac

