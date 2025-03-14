#!/bin/bash
echo " "
echo "#####################################################"
echo "################ HELLO MY FRIEND! ###################"
echo "#####################################################"
echo " "
sudo pacman -S pacman fakeroot -y --noconfirm || true
sudo cp /etc/pacman.conf /etc/pacman.conf.bac || true
sudo cp pacman/pacman.conf /etc/pacman.conf &&
#cp pacman/pacman.conff /etc/pacman.conf && 
sleep 3 || true
sudo pacman -Syyu -y --noconfirm || true
sleep 5 || true
# rm -f /etc/pacman.conf && 
sudo rm -f /etc/pacman.d/mirrorlist && 
# cp pacman/pacman.conf /etc/pacman.conf && 
sudo cp pacman/mirrorlist /etc/pacman.d/mirrorlist &&
echo " "
echo "#####################################################"
echo "################## PACMAN UPDATED! ##################"
echo "#####################################################"
echo " "
sleep 3 || true
# pacman -Scc -y || true
sudo pacman -Syyu -y || true
sleep 3 || true
chmod +x apps/inst.sh 
chmod +x apps/config.sh 
sh apps/inst.sh || true
sh apps/config.sh || true

if [[ $(sudo pacman -Syu | grep 'делать больше нечего') ]]; then
        echo "Job Done!"
fi
