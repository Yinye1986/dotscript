#!/usr/bin/env bash

set -euo pipefail

TMP_FILE=$(mktemp)
trap "rm -rf $TMP_FILE" EXIT

if ! curl -fsSL --connect-timeout 5 --max-time 10 'https://raw.hellogithub.com/hosts' -o $TMP_FILE; then
  exit 1
fi

sudo sed -i '/# GitHub520 Host Start/,/# GitHub520 Host End/d' /etc/hosts
cat $TMP_FILE | sudo tee -a /etc/hosts
