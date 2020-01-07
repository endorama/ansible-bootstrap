#!/usr/bin/env bash

set -eou pipefail

hostname="$1"
username="$2"

playbook_file="$hostname.yml"

ansible-playbook --inventory "inventory" --limit "$hostname" \
    --ask-become-pass \
    --ask-vault-pass \
    --extra-vars "myuser=$username" \
    "$playbook_file"

