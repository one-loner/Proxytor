#!/bin/bash
echo strict_chain > proxychains.conf
echo proxy_dns  >> proxychains.conf
echo [ProxyList]  >> proxychains.conf
echo "socks4         127.0.0.1 9050" >> proxychains.conf
cat proxychains.conf
proxychains $1 $2 $3 $4 $5 $6 $7 $8 $9
rm proxychains.conf
