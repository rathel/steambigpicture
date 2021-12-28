#!/bin/bash

args=$1

if [[ "$args" == "off" ]]; then
    pkill steam
    sleep 5s && ./disable.sh
    sleep 5s && steam -tenfoot > /dev/null 2>&1 &
fi
if [[ "$args" == "on" ]]; then
    pkill steam
    sleep 5s && ./enable.sh
    sleep 5s && steam -silent > /dev/null 2>&1 &
fi
