#!/bin/sh
############################################################
#
# BCM kernel module initialization for powerpc-accton-as5700-96x-r0
#
# The only argument is the SDK version suffix for the
# required modules.
#
############################################################
set -e

version=$1

if [ "${version}" = "" ]; then
    echo "usage: $0 <version>"
    exit 1
fi

insmod /lib/modules/`uname -r`/linux-kernel-bde-${version}.ko maxpayload=128 himem=1 dmasize=32M
insmod /lib/modules/`uname -r`/linux-user-bde-${version}.ko

