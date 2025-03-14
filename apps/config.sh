#!/bin/bash
echo " "
echo "#####################################################"
echo "############### COPING CONFIG FILES #################"
echo "#####################################################"
echo " "
# mkdir ~/.config/
cp apps/conf/i3 ~/.config/i3 || true
cp apps/conf/picom ~/.config/picom || true
cp apps/conf/rofi ~/.config/rofi || true
cp apps/conf/polybar ~/.config/polybar || true
echo " "
echo "#####################################################"
echo "################### COPING DONE! ####################"
echo "#####################################################"
echo " "
sleep 3 || true
