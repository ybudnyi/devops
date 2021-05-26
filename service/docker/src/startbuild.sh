#!/bin/bash
dockerhub='ybudnyi'
docker build -t dockerhub/post:1.0 ./post-py
docker build -t dockerhub/comment:1.0 ./comment
docker build -t dockerhub/ui:1.0 ./ui
