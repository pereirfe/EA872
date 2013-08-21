#!/bin/sh

cd ~

echo "Install Ubuntu iMX"

echo "Press any key"
read -n 1 -s

if test -f "ubuntu-13.04-minimal-"
    then
    echo "Arquivo Presente"
else
    wget -c http://rcn-ee.net/deb/minfs/raring/ubuntu-13.04-minimal-armhf-2013-05-05.tar.gz
fi

echo "Press any key"
read -n 1 -s

md5sum ubuntu-13.04-minimal-armhf-2013-05-05.tar.xz 952cf1f87c047653fb0f24818c8bfd26 ubuntu-13.04-minimal-armhf-2013-05-05.tar.xz

echo "Press any key"
read -n 1 -s

tar xJf ubuntu-13.04-minimal-armhf-2013-05-05.tar.xz

echo "Press any key"
read -n 1 -s

