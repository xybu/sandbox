#!/bin/bash

echo "XDG_CURRENT_DESKTOP=GNOME" >> ~/.profile
echo "export XDG_CURRENT_DESKTOP" >> ~/.profile
/usr/bin/vmware-xdg-detect-de
