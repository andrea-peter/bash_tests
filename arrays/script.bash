#!/bin/bash

# https://www.gnu.org/software/bash/manual/html_node/Arrays.html

# Declaration
# indexed array CAN be declared without `declare -a`
declare -a week_days=(Mon Tue Wed Thu Fri)

# Associative arrays MUST be declared with `declare -A`
declare -A fs_paths=(
  [proc]=/proc
  [sys]=/sys
  [other-fs]=/other
)

# Insert elements
week_days[5]=Sat
fs_paths[home]="${HOME}"

# Append elements (only indexed arrays)
week_days+=("Sun")
# TODO: Check this
week_days[]=miao

# Access elements
for n in {0..7}; do
  echo "Day $((n + 1)) of the week is ${week_days[${n}]}"
done

for fs in proc home other-fs; do
  echo "Path of ${fs} is ${fs_paths[${fs}]}"
done

# Iterate over values
for i in "${week_days[@]}"; do  # Use quotes to avoid splitting elements
  echo "$i"
done

for path in "${fs_paths[@]}"; do
  echo "${path}"
done

# Value for non-existing key is empty
non_existing_key=non_existing
# This gives an "unbound variable" error with `set -u`
value="${fs_paths[${non_existing_key}]}"
if [ -z "${value}" ]; then
  echo "Key \"${non_existing_key}\" does not exist"
fi
