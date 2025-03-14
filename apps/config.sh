#!/bin/bash
echo " "
echo "#####################################################"
echo "############### COPING CONFIG FILES #################"
echo "#####################################################"
echo " "
# mkdir ~/.config/
cp -r apps/conf/i3 ~/.config/i3 || true
cp -r apps/conf/picom ~/.config/picom || true
cp -r apps/conf/rofi ~/.config/rofi || true
cp -r apps/conf/polybar ~/.config/polybar || true
cp apps/conf/.xinitrc ~/.xinitrc || true
echo " "
echo "#####################################################"
echo "################### COPING DONE! ####################"
echo "#####################################################"
echo " "
sleep 3 || true
