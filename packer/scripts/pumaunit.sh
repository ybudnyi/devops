#!/bin/bash
cat <<EOF > /etc/systemd/system/puma.service

[Unit]
Description=Puma HTTP Server
After=network.target

[Service]
Type=simple

User=root
Group=root

ExecStart=/usr/local/bin/puma -d

#Restart=always
Restart=on-failure

[Install]
WantedBy=multi-user.target
EOF
