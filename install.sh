#!/bin/bash

# no passwd for SmcDumpKey command for sudo users
sudo echo "%sudo ALL=(ALL) NOPASSWD:/opt/smc_util/SmcDumpKey" > /etc/sudoers.d/smc_util
sudo chown root:root /etc/sudoers.d/smc_util
sudo chmod 0440 /etc/sudoers.d/smc_util

