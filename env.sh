#!/bin/sh
cat .npmrc \
 | sed -e "s|\$API_KEY|$API_KEY|g" \
 | sed -e "s|\$REGISTRY|$REGISTRY|g" \
 > /tmp/.npmrc && mv /tmp/.npmrc .npmrc
