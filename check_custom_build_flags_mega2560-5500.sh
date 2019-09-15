#! /bin/bash
CUSTOM_BUILD_FLAGS_FILE="custom-build-flags/build_flags_mega2560-5500.sh"
export FLAGS="$FLAGS -DPIO_SRC_REV="$(git log --pretty=format:%h_%ad -1 --date=short)
export FLAGS="$FLAGS -DWiz5500"
export FLAGS="$FLAGS -DMODBUS_DIMMER_PARAM=SERIAL_8E1"
export FLAGS="$FLAGS -DAVR_DMXOUT_PIN=18"

#TODO: make one file for all envs
if [ -f $CUSTOM_BUILD_FLAGS_FILE ]; then
    source $CUSTOM_BUILD_FLAGS_FILE
fi
 echo $FLAGS