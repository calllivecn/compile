#!/bin/bash
# date 2018-12-28 10:07:37
# author calllivecn <calllivecn@outlook.com>
# https://github.com/calllivecn


DEPENDS=(zli1g-dev libssl-dev libpcre3)

. "$(dirname ${0})"/libdepends.sh

nginx__version__test="1.15.2"

PREFIX="/usr/local/nginx"

#./configure --prefix="${PREFIX}" \
#			--with-http_ssl_module \
#			--with-http_realip_module \
#			--with-http_gzip_static_module

./configure --prefix="${PREFIX}" \
			--user=nginx --group=nginx \
			--with-http_ssl_module \
