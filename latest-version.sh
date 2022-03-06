#!/usr/bin/env bash

version=$(curl -s https://www.askmrrobot.com/wow/simulator/client | grep -Poe 'Version \K(\d)+')

printf "%s" "${version}"
