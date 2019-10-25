#!/bin/bash

set -e

# Set variable for root directory
ROOT=$(cd $(dirname $0) && pwd)

# Source functions
cd $ROOT
source common/FUNCTIONS

# Exit if not root user
[[ $(id -u) != "0" ]] && print_err 'You must run this script as root'

# Save ROOT
save_vars ROOT

# Initialize build environment
init/init

