#!/bin/bash

# Get Ports
PORTS=$(sed -n 's/.*port *= *\([^ ]*.*\)/\1/p' < /usr/share/emp/msg.conf)
read -a array <<< $PORTS

# Final Output
xdg-open "http://localhost:${array[1]}" 2> /dev/null
