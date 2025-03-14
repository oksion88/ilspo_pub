# /bin/bash

pacman -Syu -y &
sleep 3 
rm -f /etc/pacman.conf && 
rm -f /etc/pacman.d/mirrorlist && 
cp pacman/pacman.conf /etc/pacman.conf && 
cp pacman/mirrorlist /etc/pacman.d/mirrorlist &&
sleep 1
pacman -Syu -y &&
sleep 3
chmod +x apps/inst.sh
1 | sh apps/inst.sh

if [[ $(pacman -Syu | grep 'делать больше нечего') ]]; then
        echo "Job Done!"
fi
