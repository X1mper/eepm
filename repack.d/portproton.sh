#!/bin/sh -x
# It will run with two args: buildroot spec
BUILDROOT="$1"
SPEC="$2"

PRODUCT=portproton
PRODUCTDIR=/opt/PortProton

. $(dirname $0)/common.sh

if [ "$(epm print info -s)" = "alt" ] ; then
    add_requires bubblewrap cabextract curl gamemode icoutils libvulkan1 vulkan-tools wget zenity zstd gawk tar libd3d libMesaOpenCL /usr/bin/convert
fi

filter_from_requires xneur
