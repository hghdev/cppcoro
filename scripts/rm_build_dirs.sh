#!/bin/sh

clear

set -ex

find . -type d -name "build" -print0 -exec rm -rf {} +
# find . -type d -name "build" -exec rm -rf \;
