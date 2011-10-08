#!/bin/sh

#git-buildpackage -S --git-ignore-new --git-tag
DIST=natty git-buildpackage --git-ignore-new

dh clean
git clean -fd
