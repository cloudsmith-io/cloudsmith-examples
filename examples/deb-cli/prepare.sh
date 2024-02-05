#!/bin/bash
set -eou pipefail


# install Python, pip and rpm
sudo apt-get update
sudo apt install -y python3 python3-pip

# install the cloudsmith CLI
pip install --user cloudsmith-cli

# install fpm for building RPM packages
gem install fpm
