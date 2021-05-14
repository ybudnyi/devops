#!/bin/bash
cat <<EOF > /etc/systemd/system/puma.service

[Unit]
Description=Puma HTTP Server
After=network.target

[Service]
Type=simple

User=root

WorkingDirectory=/home/root/reddit

ExecStart=/usr/local/bin/puma -d

Restart=always

[Install]
WantedBy=multi-user.target
EOF
