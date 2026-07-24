#!/bin/bash

source ./09-colours.sh

if [ $UID -ne 0 ]; then
    echo -e "${Red} ${BOLD} Please run this script with root access${RESET}"
    exit 1
fi

