#!/bin/bash
set -e

CONFIG_PATH=/data/options.json

USB=$(jq --raw-output "UsbPath" $CONFIG_PATH)

/bin/socat TCP-LISTEN:20000,fork $USB,raw,b115200,echo=0
