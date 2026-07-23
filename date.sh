#!/bin/bash

echo "Abbreviated month (%h): $(date +%h)"
echo "Date MM/DD/YY (%D):     $(date +%D)"
echo "Full date (%F):         $(date +%F)"
echo "Full time (%T):         $(date +%T)"
echo "Time HH:MM (%R):        $(date +%R)"

echo "All together: $(date '+%h %D | %F %T (%R)')"

echo "Current date and time: $(date '+%Y-%m-%d %H:%M:%S')"