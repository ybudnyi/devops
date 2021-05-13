#!/bin/bash
yes | gcloud compute images delete test1
packer build -var-file=variables.json ubuntu.json
