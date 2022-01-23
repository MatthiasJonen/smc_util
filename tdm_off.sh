#!/bin/bash
rm -f ~/.tdm_started
sudo /opt/smc_util/SmcDumpKey MVHR 0
sleep 1
sudo /opt/smc_util/SmcDumpKey MVMR 2
sleep 2
DISPLAY=:0.0 xrandr --output eDP --auto
