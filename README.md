# smc_util
Apple System Management Control (SMC) utility

Forked from floe/smc_util who forked from original smc_util repository, with a couple of other, slightly modified, SMC-related tools:
* powermetrics.d from https://gist.github.com/beltex/acbbeef815a7be938abf
* SmcDumpKey.c from https://www.contrib.andrew.cmu.edu/~somlo/OSXKVM/
* tdm_toggle.sh from https://github.com/floe/smc_util/pull/11 by https://github.com/FreekMank

# How to use

_Note_: This was tested on a mid-2010 27" iMac no apple OS, only Elementary OS. Base is ubuntu 20.04. Any other model/OS combo might behave differently.

This works for any user on the system with sudo rights without password.

First run after install.sh will switch off TDM. This is to check if tdm_toggle.sh works as desired. You should not be prompted for a sudo password.

I hardcoded the directory /opt/smc_util in the script.

```
sudo apt install build-essential

cd /opt
sudo git clone https://github.com/MatthiasJonen/smc_util.git
cd smc_util
sudo ./install.sh

./tdm_toggle.sh # toggle target display mode.
```

__IMPORTANT__: when you run `tdm_on.sh` and it works on your iMac, then the display will switch over to the DP input and you won't have the console anymore. Make sure you have a remote shell open first, or maybe a keyboard hotkey set up, so you can also run `tdm_off.sh` again to switch back to the internal iMac graphics.
