#!/bin/bash

# A simple script that turns the (not functioning) Back/Forward buttons into
# PgUp / PgDn buttons according to
# http://lovingboth.com/logitech-m570-trackball-buttons-in-linux/

sudo apt install xbindkeys xautomation

cat > ~/.xbindkeysrc << EOF
"xte 'key Page_Up'"
b:9

"xte 'key Page_Down'"
b:8
EOF
