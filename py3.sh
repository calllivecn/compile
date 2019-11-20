#!/bin/bash
# date 2018-11-20 14:32:52
# author calllivecn <c-all@qq.com>

set -e

DEPENDS=(zlib1g-dev libbz2-dev libssl-dev libncurses5-dev libsqlite3-dev libreadline-dev libgdbm-dev libdb-dev libpcap-dev xz-utils libexpat1-dev liblzma-dev libffi-dev libc6-dev tk-dev)
# build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget

. "$(dirname ${0})"/libdepends.sh


./configure --prefix=/opt/calllivecn/py371 --with-lto --enable-optimizations

CPUs=$(python3 -c 'import os;print(os.cpu_count())')

time { make -j $CPUs; }

time { sudo make altinstall; python3.8 --version}

#time { sudo make install; }
