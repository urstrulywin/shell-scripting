#!/bin/bash

echo "User ID of the current user = $UID" # $(id -u)
echo "Group ID of the current user = $GID" # $(id -g)
echo "User name of the current user = $(id -un)" 
echo "$(whoami) is running this script"
echo "$(logname)" # gives the name of the user who is logged in on the terminal, which may be different from the user running the script if the script is run with sudo or su.
echo "Who is running this: $USER" # note: $USER is not always set, especially in non-interactive shells. It's better to use $(id -un) to get the username of the current user.

echo "current process ID = $BASHPID"
echo "Parent process ID = $$"

echo "current script name = $BASH_SOURCE"
echo "invoked script name = $0"
# invoked script name is the name of the script as it was called, while $BASH_SOURCE is the name of the script as it is being executed. In most cases, these two variables will have the same value, but they can differ in certain situations, such as when a script is sourced or when a function is called from another script.

echo "Number of arguments passed to the script = $#"
echo "All arguments passed to the script = $@"
echo "All arguments passed to the script as a single string = $*"
echo "First argument passed to the script = $1"
echo "Second argument passed to the script = $2"
echo "Third argument passed to the script = $3"

echo "Home directory: $HOME"
echo "Which directory: $PWD"
sleep 5 & # run sleep command in the background
echo "PID of the background command running just now: $!"
wait $! # wait for the background command to finish
echo "Line number: $LINENO"
echo "Script executed in $SECONDS seconds"
echo "Random number: $RANDOM"
echo "Exit code of previous command: $?"