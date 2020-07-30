#! /bin/sh

# remove old media/preview_card
docker-compose exec web bundle exec bin/tootctl media remove
docker-compose exec web bundle exec bin/tootctl media remove-orphans
docker-compose exec web bundle exec bin/tootctl preview_cards remove

# restart all services
docker-compose down
snapper -c config create -c number --description "daily maintenance"
docker-compose up -d
