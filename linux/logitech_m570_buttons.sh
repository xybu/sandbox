#!/bin/bash

# A simple script that turns the (not functioning) Back/Forward buttons into
# PgUp / PgDn buttons according to
# http://lovingboth.com/logitech-m570-trackball-buttons-in-linux/

# Add required package.
sudo apt install xbindkeys xautomation

# Write the key binding.
cat > ~/.xbindkeysrc << EOF
"xte 'key Page_Up'"
b:9

"xte 'key Page_Down'"
b:8
EOF

# Setup crontab so that it starts automatically.
cron_line="@reboot xbindkeys"
(crontab -l; echo "$cron_line" ) | crontab -

# Start the program now.
xbindkeys
