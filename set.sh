#!/bin/bash

set -e # the script will exit on any command that returns a non-zero exit status

set -x
echo "Debugging this section"
set +x
echo "Debugging finished"

echo "Hello home: $HOME"
abcd
echo "This line will not be executed due to the error above"