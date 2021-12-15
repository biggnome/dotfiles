#!/bin/bash
# baraction.sh script for spectrwm status bar

## DISK
hdd() {
    hdd="$(df -h | awk 'NR==4{print $3 " (" $5 ")"}')"
    echo -e " $hdd"
}

## RAM
mem() {
  mem=`free -h | awk '/Mem/ {printf $3 "/" $2 }' | tr -d i`
  echo -e " $mem"
}

## CPU
cpu() {
  read cpu a b c previdle rest < /proc/stat
  prevtotal=$((a+b+c+previdle))
  sleep 0.5
  read cpu a b c idle rest < /proc/stat
  total=$((a+b+c+idle))
  cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
  echo -e " $cpu%"
}

## NET
net() {
    net="$(/home/sandy/.local/bin/netspeed)"
    echo -e " $net"
}


## TEMP
# temp() {
#   eval $(sensors | awk '/^Core 0/ {gsub(/°/,""); printf "CPU0=%s;", $3}')
#   eval $(sensors | awk '/^Core 1/ {gsub(/°/,""); printf "CPU1=%s;", $3}')
#   echo -e "TEMP: ${CPU0}/${CPU1}"
# }

## Updates
# updates() {
#     updates="$(/home/steve/updates.sh)"
#     echo -e "UPDATES: $updates"
# }

## Weather
# Using a systemd timer to pull weather info from wttr.in to a cache file every 15min.
weather() {
    weather="$(cat /home/sandy/.cache/weather)"
    echo -e "$weather"
}

## UPDATES
updates() {
    updates="$(cat /home/sandy/.cache/updates)"
    echo -e " $updates"
}

SLEEP_SEC=3
#loops forever outputting a line every SLEEP_SEC secs

# It seems that we are limited to how many characters can be displayed via
# the baraction script output. And the the markup tags count in that limit.
# So I would love to add more functions to this script but it makes the
# echo output too long to display correctly.
while :; do
    echo "+@fg=2; $(updates) +@fg=0; | +@fg=3; $(hdd) +@fg=0; | +@fg=4; $(mem) +@fg=0; | +@fg=5; $(cpu) +@fg=0; | +@fg=6; $(net) +@fg=0; | +@fg=7; $(weather) +@fg=0; |" # +@fg=1; $(temp) +@fg=0; | +@fg=8; $(updates) +@fg=0; |"
    /home/sandy/.local/bin/updatescreen
    sleep $SLEEP_SEC
done

