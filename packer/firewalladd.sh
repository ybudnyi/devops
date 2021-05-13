#!/bin/bash
gcloud compute firewall-rules create webservertest --allow tcp:9292 --source-tags=my-instance --source-ranges=0.0.0.0/0
