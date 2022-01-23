#!/bin/bash

pushd /opt/smc_util/

if [[ -f "~/.tdm_started" ]]; then
  echo "Switching off TDM"
  source tdm_off.sh
else
  echo "Switch on TDM"
  source tdm_on.sh
fi

popd
