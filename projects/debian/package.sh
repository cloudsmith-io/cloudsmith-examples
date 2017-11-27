#!/bin/bash
make
fpm -f -s dir -t deb -n cloudsmith.example -v 1.0 .
