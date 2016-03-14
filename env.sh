#!/bin/sh
cat package.json \
 | sed -e "s|\$PUBLISH_REGISTRY|$PUBLISH_REGISTRY|g" \
 > /tmp/package.json && mv /tmp/package.json package.json

cat npmrc \
 | sed -e "s|\$API_KEY|$API_KEY|g" \
 | sed -e "s|\$REGISTRY|$REGISTRY|g" \
 > /tmp/.npmrc && mv /tmp/.npmrc ~/.npmrc

