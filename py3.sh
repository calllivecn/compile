#!/bin/bash
# date 2018-11-20 14:32:52
# author calllivecn <c-all@qq.com>

set -e


DEPENDS=(zlib1g-dev libbz2-dev libssl-dev libncurses5-dev libsqlite3-dev libreadline-dev tk-dev libgdbm-dev libdb-dev libpcap-dev xz-utils libexpat1-dev liblzma-dev libffi-dev libc6-dev)

install_depends(){
for i in $(seq 0 $[${#DEPENDS[@]} - 1]);
do
	sudo apt install ${DEPENDS[$i]}
done
}

install_depends

./configure --prefix=/opt/calllivecn/py371 --with-lto --enable-optimizations

CPUs=$(python3 -c 'import os;print(os.cpu_count())')

time { make -j $CPUs; }

time { sudo make install; }
