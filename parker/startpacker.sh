#!/bin/bash
sudo packer build -var-file=variables.json template.json ubuntu.json