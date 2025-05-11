Home-made adblocker stack
=============================

This is a simple stack to manage a home-made ad-blocker.
components: 
 - traefik: only used for web ui/security
 - adguard home: a DNS server with block lists
 - wireguard: a VPN configured to enable DNS blocking on phones when not on wifi. (not tested yet on iOS)

requirements:i
 - GNU make 
 - docker

Getting started
----------------------------

- first, copy the .env.example file to .env and configure to your needs
- then run `make up`
