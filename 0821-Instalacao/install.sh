#!/bin/sh

cd /tmp

echo "Setup SD CARD"

echo "Press any key"
read -n 1 -s

echo "Unidade do cartao?"
read DISK 
#/dev/sdb? /dev/sdb0

echo "OK!"
echo "Apagar Cartao"
echo "Press any key"
read -n 1 -s

dd if=/dev/zero of="$DISK" bs=1M count=16

echo "OK!"
echo "Instalar BootLoader"
echo "Press any key"
read -n 1 -s

dd if=./u-boot/u-boot.imx of="${DISK}" bs=512 seek=2


echo "OK!"
echo "Criar Particoes"
echo "Press any key"
read -n 1 -s

sfdisk --in-order --Linux --unit M "$DISK" <<-__EOF__
       1,48,0x83,*
       ,,,-
       __EOF__


echo "OK!"
echo "Criar Particoes"
echo "Press any key"
read -n 1 -s

sudo mkfs.ext2 "$DISK1" -L boot
sudo mkfs.ext4 "$DISK2" -L rootfs

echo "OK! -  Retire e insira o Cartao p/ Monta-lo"
echo "Press any key"
read -n 1 -s





