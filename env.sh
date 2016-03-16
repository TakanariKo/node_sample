#!/bin/sh
cat package.json \
 | sed -e "s|\$REGISTRY|$REGISTRY|g" \
 > /tmp/package.json && mv /tmp/package.json package.json
