#!/bin/bash

# Return value of a function is the return value
# of the last command
function retval1() {
  echo "Return value of echo"
}

function retval2() {
  echo "Return value of false"
  false
}

# Unless specified with return...
function retval3() {
  echo "Explicit return value"
  false
  return 0
}

# ...or not, in that case the return status
# of the last command is returned
function retval4() {
  echo "'return' without specific value"
  false
  return
}

retval1
echo "Return value is: $?"

retval2
echo "Return value is: $?"

retval3
echo "Return value is: $?"

retval4
echo "Return value is: $?"
