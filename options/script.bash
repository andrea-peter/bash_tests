#!/bin/bash

# Subshell don't inherit shell options unless SHELLOPTS is exported

SCRIPT_DIR="$(dirname "$(realpath $0)")"

# Shell options are listed in SHELLOPTS
set -e
echo "Shell options: ${SHELLOPTS}"

# Use this to pass shell options to subshells
#export SHELLOPTS

"${SCRIPT_DIR}/failing_script.bash"

echo Done
