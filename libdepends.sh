#!/bin/bash
# date 2018-11-20 14:32:52
# author calllivecn <calllivecn@outlook.com>

set -e

install_depends(){
for i in $(seq 0 $[${#DEPENDS[@]} - 1]);
do
	sudo apt install ${DEPENDS[$i]}
done
}

install_depends

