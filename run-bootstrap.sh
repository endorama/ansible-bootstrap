#!/usr/bin/env bash

set -eou pipefail

username="${1:-$USER}"
hostname="${2:-$(hostname)}"

playbook_file="$hostname.yml"

ansible-playbook --inventory "inventory" --limit "$hostname" \
    --ask-become-pass \
    --extra-vars "myuser=$username" \
    "$playbook_file"

