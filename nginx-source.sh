#!/bin/bash
# date 2018-12-28 10:38:38
# author calllivecn <c-all@qq.com>
# https://github.com/calllivecn

set -e

wget -O- http://nginx.org/keys/nginx_signing.key | apt-key add -

codename=$(grep VERSION_CODENAME /etc/os-release |cut -d'=' -f2)

cat > /etc/apt/sources.list.d/nginx.list << EOF
deb http://nginx.org/packages/ubuntu/ ${codename} nginx
#deb-src http://nginx.org/packages/ubuntu/ ${codename} nginx
EOF

apt update && apt install nginx
