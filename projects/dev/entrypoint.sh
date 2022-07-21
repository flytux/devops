#!/bin/sh

set -e

echo "startring ssh daemon"
service ssh start

echo "starting container ready"
tail -f > /dev/null