#!/usr/bin/env bash

echo "UniFi external query"
dig +short @192.168.1.1 google.com | sed 's/^/  /'
echo "---"
echo "UNIFI internal device query"
dig +short @192.168.1.1 unifi.internal | sed 's/^/  /'
echo "UNIFI internal custom query"
dig +short @192.168.1.1 unifi.housefam.win | sed 's/^/  /'
echo "---"
echo "UniFi main cluster query"
dig +short @192.168.1.1 echo-server.housefam.casa | sed 's/^/  /'
echo "---"
echo "UniFi reverse query"
dig +short @192.168.1.1 -x 192.168.1.28 | sed 's/^/  /'
echo "---------------------------------------------------"
