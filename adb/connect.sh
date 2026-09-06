#!/usr/bin/env bash

IP='192.168.1.62'

adb start-server
adb connect $IP:5555
