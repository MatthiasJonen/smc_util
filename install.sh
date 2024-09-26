#!/bin/bash

# no passwd for SmcDumpKey command for sudo users
SmcDumpKey="$(pwd)/SmcDumpKey"

sudo echo "%sudo ALL=(ALL) NOPASSWD:$SmcDumpKey" > /etc/sudoers.d/smc_util
sudo chown root:root /etc/sudoers.d/smc_util
sudo chmod 0440 /etc/sudoers.d/smc_util

sudo gcc -O2 -o SmcDumpKey SmcDumpKey.c -Wall
sudo rmmod applesmc # remove the SMC kernel driver to avoid conflicts

touch ~/.tdm_started # create status file to switch off TDM in first run of tdm_toggle.sh