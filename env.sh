#!/bin/sh
cat package.json \
 | sed -e "s|\$PUBLISH_REGISTRY|$PUBLISH_REGISTRY|g" \
 > /tmp/package.json && mv /tmp/package.json package.json

