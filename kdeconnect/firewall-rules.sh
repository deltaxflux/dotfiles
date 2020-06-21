#!/usr/bin/env bash

# Add firewall kdeconnect rules
INTERFACE="wlp1s0"

if [ "$1" != "" ];then INTERFACE=$1; fi

iptables -I INPUT -i $INTERFACE -p udp --dport 1714:1764 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -I INPUT -i $INTERFACE -p tcp --dport 1714:1764 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -o $INTERFACE -p tcp --sport 1714:1764 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -o $INTERFACE -p udp --sport 1714:1764 -m state --state NEW,ESTABLISHED -j ACCEPT

