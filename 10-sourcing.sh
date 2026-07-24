#!/bin/bash

(./09-colours.sh)
./09-colours.sh 
sh ./09-colours.sh
bash ./09-colours.sh
# the above commands will execute the script in a subshell. The subshell will have its own environment and any variables set or modified within it will not affect the parent shell.

echo "Process ID of 10-source.sh: $$"

source ./09-colours.sh
. ./09-colours.sh
# the above commands will execute the script in the current shell. Any variables set or modified within it will affect the current shell.