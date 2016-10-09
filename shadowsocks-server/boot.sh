#!/bin/bash

set -o nounset
set -o errexit

cp /export/servers/shadowsocks-server/etc/config.json.sample /export/servers/shadowsocks-server/etc/config.json

sed -E -i "s/__PRIVATE_PASSWD__/${PRIVATE_PASSWD}/g" /export/servers/shadowsocks-server/etc/config.json

sed -E -i "s/__PUBLIC_PASSWD__/${PUBLIC_PASSWD}/g" /export/servers/shadowsocks-server/etc/config.json

/export/servers/shadowsocks-server/bin/start.sh

sleep 999999d
