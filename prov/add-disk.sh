#!/usr/bin/env bash

yum install -y parted
parted -s -a optimal /dev/sdb mklabel gpt -- mkpart primary ext4 0% 100%
mkfs.ext4 /dev/sdb1
mkdir /db1
mount /dev/sdb1 /db1
echo "/dev/sdb1 /db1 ext4 defaults 0 0" >> /etc/fstab
