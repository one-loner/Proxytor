#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
apt-get install -y proxychains tor obfs4proxy
cp proxytor.sh /bin/proxytor
chmod +x /bin/proxytor
