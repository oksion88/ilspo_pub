#!/bin/bash

pacman -Syyu -y --noconfirm || true
sleep 5 
rm -f /etc/pacman.conf && 
rm -f /etc/pacman.d/mirrorlist && 
cp pacman/pacman.conf /etc/pacman.conf && 
cp pacman/mirrorlist /etc/pacman.d/mirrorlist &&
sleep 1
sudo pacman -Scc -y || true
pacman -Syyu -y || true
sleep 3
chmod +x apps/inst.sh 
sh apps/inst.sh || true

if [[ $(pacman -Syu | grep 'делать больше нечего') ]]; then
        echo "Job Done!"
fi
