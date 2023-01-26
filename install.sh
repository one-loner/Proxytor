#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root."
  exit
fi
apt-get install -y proxychains tor obfs4proxy privoxy
cp proxytor.sh /bin/proxytor
chmod +x /bin/proxytor
cp torproxyon.sh /bin/torproxyon
chmod +x /bin/torproxyon
mv /etc/privoxy/config /etc/privoxy/config.old
cp privoxy.config /etc/privoxy/config
systemctl restart privoxy
echo Proxytor is installed.
echo proxytor command - to proxy command to Tor.
echo torproxyon - to proxy all commands in this terminal session to Tor.
