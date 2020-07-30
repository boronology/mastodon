#!/bin/sh

docker-compose down
snapper -c config create -c number --description 'manual down' 
