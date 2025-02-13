#!/bin/sh -x
# It will run with two args: buildroot spec
BUILDROOT="$1"
SPEC="$2"

PRODUCT=rocketchat-desktop
PRODUCTCUR=rocketchat
PRODUCTDIR=/opt/Rocket.Chat

. $(dirname $0)/common-chromium-browser.sh

add_bin_link_command
add_bin_link_command $PRODUCTCUR $PRODUCT

install_deps

fix_chrome_sandbox

subst "s|$PRODUCTDIR/||" $BUILDROOT/usr/share/applications/rocketchat-desktop.desktop

#epm assure patchelf || exit
#for i in $BUILDROOT$PRODUCTDIR/$PRODUCT ; do
#    a= patchelf --set-rpath "$PRODUCTDIR" $i
#done
