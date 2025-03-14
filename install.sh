#!/bin/bash
echo " "
echo "#####################################################"
echo "################ HELLO MY FRIEND! ###################"
echo "#####################################################"
echo " "
cp /etc/pacman.conf /etc/pacman.conf.bac
cp pacman/pacman.conff /etc/pacman.conf && 
sleep 3 || true
pacman -Syyu -y --noconfirm || true
sleep 5 || true
# rm -f /etc/pacman.conf && 
rm -f /etc/pacman.d/mirrorlist && 
# cp pacman/pacman.conf /etc/pacman.conf && 
cp pacman/mirrorlist /etc/pacman.d/mirrorlist &&
echo " "
echo "#####################################################"
echo "################ PACMAN IS UPDATED! #################"
echo "#####################################################"
echo " "
sleep 3 || true
# pacman -Scc -y || true
pacman -Syyu -y || true
sleep 3 || true
chmod +x apps/inst.sh 
sh apps/inst.sh || true

if [[ $(pacman -Syu | grep 'делать больше нечего') ]]; then
        echo "Job Done!"
fi
