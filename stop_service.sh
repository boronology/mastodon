#!/bin/sh

docker compose down
snapper -c mastodon-dir create -c number --description 'manual down'
