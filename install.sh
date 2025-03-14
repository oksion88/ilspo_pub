# /bin/bash

rm -f /etc/pacman.conf
rm -f /etc/pacman.d/mirrorlist
yes | cp ./pacman/pacman.conf /etc/pacman.conf
yes | cp ./pacman/mirrirlist /etc/pacman.d/mirrorlist
sleep 1
pacman -Syu -y &&
sleep 3
chmod +x ./apps/inst.sh
1 | sh ./apps/inst.sh


