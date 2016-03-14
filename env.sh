#!/bin/sh
cat .npmrc \
 | sed -e "s|\$REGISTRY|$REGISTRY|g" \
 | sed -e "s|\$API_KEY|$API_KEY|g" \
 > /tmp/.npmrc && mv /tmp/.npmrc .npmrc
