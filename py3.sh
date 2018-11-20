#!/bin/bash
# date 2018-11-20 14:32:52
# author calllivecn <c-all@qq.com>


DEPENDS=(zlib1g-dev libbz2-dev libssl-dev libncurses5-dev libsqlite3-dev libreadline-dev tk-dev libgdbm-dev libdb-dev libpcap-dev xz-utils libexpat1-dev liblzma-dev libffi-dev libc6-dev)

#sudo apt install "$DEPENDS"

install_depends(){
for i in $(seq 0 $[${#DEPENDS[@]} - 1]);
do
	sudo apt install ${DEPENDS[$i]}
done
}



