#!/bin/bash
while true; do
  bat_lvl=$(cat /sys/class/power_supply/BAT0/capacity)
  if [ "$bat_lvl" -le 15 ]; then
    dunstify "Battery low" "Level: ${bat_lvl}" -u critical
    sleep 1200
  else
    sleep 120
  fi
done
