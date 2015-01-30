#!/bin/sh

# Makes a new version of jake and bumps the version
cd jake-1.0

VERSION=$(date +%s)

echo "jake (1.0-$VERSION) precise; urgency=low

  * Bump for testing

 -- Joe Damato <joe@packagecloud.io>  Wed, 11 Jun 2014 12:29:43 -0800
" | cat - debian/changelog > tmp && mv tmp debian/changelog

rm tmp

debuild -us -uc
