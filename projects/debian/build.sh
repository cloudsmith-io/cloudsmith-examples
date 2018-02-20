#!/bin/bash

cd "projects/debian/src"

make

cd "../"

fpm -f -s dir -t deb -n cloudsmith-debian-example -v 1.0 .
