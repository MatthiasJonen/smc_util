#!/bin/bash
rm -f ~/.tdm_started
sudo ./SmcDumpKey MVHR 0
sleep 1
sudo ./SmcDumpKey MVMR 2
sleep 2
DISPLAY=:0.0 xrandr --output eDP --auto
