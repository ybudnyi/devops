#!/bin/bash
cat puma_startup.txt > /etc/systemd/system/puma.service

systemctl start puma.service
systemctl enable puma.service