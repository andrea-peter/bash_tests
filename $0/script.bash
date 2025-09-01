#!/bin/bash

# $0 contains the path of the script relative to cwd
echo "\$0 is $0"

echo "\$(realpath) of \$0 is $(realpath "$0")"
echo "The absolute path of the script is $(dirname "$(realpath $0)")"
