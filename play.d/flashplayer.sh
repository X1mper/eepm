#!/bin/sh

PKGNAME=flashplayer
SUPPORTEDARCHES="x86_64"
DESCRIPTION="Adobe Flash Player from the official site"
URL="http://www.adobe.com/support/flashplayer/downloads.html"

. $(dirname $0)/common.sh

VERSION=32.0.0.465
PKGURL=https://fpdownload.macromedia.com/pub/flashplayer/updaters/32/flash_player_sa_linux.x86_64.tar.gz

epm pack --install $PKGNAME $PKGURL "$VERSION"
