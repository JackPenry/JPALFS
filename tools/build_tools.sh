#!/bin/bash

set -e

# Check to see that we have been called by jpalfs.sh
if [[ $(ps -o comm= $PPID) != 'jpalfs.sh' ]]
then
    echo -e "\e[31mThis script must be called by jpalfs.sh\e[0m"
    exit 1
fi

# Set up /tools if necessary
