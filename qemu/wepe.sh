#!/usr/bin/env bash

qemu-system-x86_64 \
  -enable-kvm \
  -m 4G \
  -smp 2 \
  -cpu host \
  -cdrom WePE_64_V2.3.iso \
  -boot d \
  -vga std
