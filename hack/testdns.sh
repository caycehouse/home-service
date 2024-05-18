#!/usr/bin/env bash

echo "BLOCKY external query"
dig +short @192.168.4.121 google.com | sed 's/^/  /'
echo "---"
echo "BLOCKY internal query"
dig +short @192.168.4.121 unifi.internal | sed 's/^/  /'
echo "BLOCKY internal BIND query"
dig +short @192.168.4.121 unifi.house.casa | sed 's/^/  /'
echo "---"
echo "BLOCKY main cluster query"
dig +short @192.168.4.121 echo-server.caycehouse.com | sed 's/^/  /'
echo "BIND main cluster query"
dig +short @192.168.4.123 echo-server.caycehouse.com | sed 's/^/  /'
echo "---"
echo "BLOCKY reverse query"
dig +short @192.168.4.121 -x 192.168.7.28 | sed 's/^/  /'
echo "---------------------------------------------------"
