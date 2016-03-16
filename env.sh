#!/bin/sh
cat .npmrc \
 | sed -e "s|\$REGISTRY|$REGISTRY|g" \
 > /tmp/.npmrc && mv /tmp/.npmrc .npmrc
