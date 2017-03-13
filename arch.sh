#!/bin/bash

sudo pacman -S intel-ucode
sudo grub-mkconfig -o /boot/grub/grub.cfg

sudo pacman -S ntp vim base-devel
