#!/bin/bash

echo "#####################################################"
echo "################ HELLO MY FRIEND! ###################"
echo "#####################################################"
sleep 3 || true
pacman -Syyu -y --noconfirm || true
sleep 5 || true
rm -f /etc/pacman.conf && 
rm -f /etc/pacman.d/mirrorlist && 
cp pacman/pacman.conf /etc/pacman.conf && 
cp pacman/mirrorlist /etc/pacman.d/mirrorlist &&
echo "#####################################################"
echo "############# FILES FOR PACMAN UPDATED! #############"
echo "#####################################################"
sleep 3 || true
pacman -Scc -y || true
pacman -Syyu -y || true
sleep 3 || true
chmod +x apps/inst.sh 
sh apps/inst.sh || true

if [[ $(pacman -Syu | grep 'делать больше нечего') ]]; then
        echo "Job Done!"
fi
