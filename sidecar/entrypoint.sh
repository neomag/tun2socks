#!/bin/bash

ip tuntap add mode tun dev tun0
ip addr add 198.18.0.1/15 dev tun0
ip link set dev tun0 up


DEFGW=$(ip ro sh| awk '{print $3}'| head -n1)
echo $DEFGW
echo $VPN_USER
echo $VPN_PASS
echo $VPN_ADDRESS

ip ro sh
echo "---------------------"
echo "route manipulating..."
ip route del default
ip route add default via 198.18.0.1 dev tun0 metric 1
ip route add default via $DEFGW dev eth0 metric 10

/tun2socks -device tun0 -proxy socks5://$VPN_USER:$VPN_PASS@$VPN_ADDRESS:1080 -interface eth0
