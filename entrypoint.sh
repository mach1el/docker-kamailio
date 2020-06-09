#!/bin/bash
set -m
HOST_IP=$(ip route get 8.8.8.8 | head -n +1 | tr -s " " | cut -d " " -f 7)

sed -i "s/listen=udp:localhost:5060/listen=udp:${HOST_IP}:5060/g" /etc/kamailio/kamailio.cfg
sed -i "s/udp:localhost:2229/udp:${HOST_IP}:2229/g" /etc/kamailio/kamailio.cfg
sed -i "s/postgres@localhost/postgres@${HOST_IP}/g" /etc/kamailio/kamailio.cfg

/usr/sbin/kamailio -DDEdd -f /etc/kamailio/kamailio.cfg

fg %1