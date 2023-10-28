#!/bin/sh

clear

set -ex

find . -type d -name build -exec rm -r "{}" \;
