#!/bin/bash
git clone https://github.com/friendlyarm/repo
sudo cp repo/repo /usr/bin/

mkdir friendlywrt-rk3328
cd friendlywrt-rk3328
repo init -u https://github.com/friendlyarm/friendlywrt_manifests -b master-v19.07.1 -m rk3328.xml --repo-url=https://github.com/friendlyarm/repo  --no-clone-bundle
./../sync.sh

wget -O - https://raw.githubusercontent.com/friendlyarm/build-env-on-ubuntu-bionic/master/install.sh | bash

./build.sh nanopi_r2.mk