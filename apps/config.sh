#!/bin/bash
echo " "
echo "#####################################################"
echo "############### COPING CONFIG FILES #################"
echo "#####################################################"
echo " "
# mkdir ~/.config/
cp conf/i3 ~/.config/i3 || true
cp conf/picom ~/.config/picom || true
cp conf/rofi ~/.config/rofi || true
cp conf/polybar ~/.config/polybar || true
echo " "
echo "#####################################################"
echo "################### COPING DONE! ####################"
echo "#####################################################"
echo " "
sleep 3 || true
