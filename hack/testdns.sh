#!/usr/bin/env bash

echo "BLOCKY external query"
dig +short @192.168.4.121 google.com | sed 's/^/  /'
echo "---"
echo "BLOCKY internal UNIFI device query"
dig +short @192.168.4.121 unifi.internal | sed 's/^/  /'
echo "BLOCKY internal UNIFI custom query"
dig +short @192.168.4.121 unifi.housefam.win | sed 's/^/  /'
echo "---"
echo "BLOCKY main cluster query"
dig +short @192.168.4.121 echo-server.housefam.casa | sed 's/^/  /'
echo "---"
echo "BLOCKY reverse query"
dig +short @192.168.4.121 -x 192.168.7.28 | sed 's/^/  /'
echo "---------------------------------------------------"
