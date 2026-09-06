#!/usr/bin/env bash

IP='192.168.1.64'

adb start-server
adb connect $IP:5555
scrcpy --no-video & disown
