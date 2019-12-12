#!/bin/bash

set -eou pipefail

sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible
