#!/bin/bash
dockerhub='ybudnyi'

docker kill $(docker ps -q)
# docker network create reddit
docker run -d --network=back_net --name mongo_db --network-alias=post_db --network-alias=comment_db mongo:latest
docker run -d --network=back_net --name post dockerhub/post:1.0
docker run -d --network=back_net --name comment dockerhub/comment:1.0
docker run -d --network=front_net -p 9292:9292 --name ui dockerhub/ui:1.0


#docker kill $(docker ps -q)
#docker run -d --network=reddit --network-alias=post_db --network-alias=comment_db mongo:latest
#docker run -d --network=reddit --network-alias=post dockerhub/post:1.0
#docker run -d --network=reddit --network-alias=comment dockerhub/comment:1.0
#docker run -d --network=reddit -p 9292:9292 ybudnyi/ui:2.0


#docker kill $(docker ps -q)
#docker run -d --network=reddit --network-alias=post_db --network-alias=comment_db -v reddit_db:/data/db mongo:latest
#docker run -d --network=reddit --network-alias=post dockerhub/post:1.0
#docker run -d --network=reddit --network-alias=comment dockerhub/comment:1.0
#docker run -d --network=reddit -p 9292:9292 ybudnyi/ui:2.0
