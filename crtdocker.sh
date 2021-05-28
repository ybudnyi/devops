#!/bin/bash
read -p 'Print your project id: ' project
export GOOGLE_PROJECT=$project
read -p 'Print name for your docker host' dh
docker-machine create --driver google \
--google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts \
	--google-machine-type n1-standard-1 \
	--google-zone europe-west1-b $dh
