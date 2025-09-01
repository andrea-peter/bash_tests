echo "Starting subshell"

echo "Shell options in subshell: ${SHELLOPTS}"

# If -e is set this will exit
false

echo "Subshell still running"

echo "About to exit with 1"
exit 1
