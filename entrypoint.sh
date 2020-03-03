#!/bin/bash
set -m
HOST_IP=$(ip route get 8.8.8.8 | head -n +1 | tr -s " " | cut -d " " -f 7)

sed -i "s/listen=udp:localhost:5060/listen=udp:${HOST_IP}:5060/g" /etc/kamailio/kamailio.cfg
# sed -i "s/listen=ws:localhost:8888/listen=ws:${HOST_IP}:8888/g" /etc/kamailio/kamailio.cfg

/usr/sbin/kamailio -DDEdd -f /etc/kamailio/kamailio.cfg

# python3 /mi_api.py

# fg %1