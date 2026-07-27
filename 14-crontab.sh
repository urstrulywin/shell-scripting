#!/bin/bash

# i want this script to run every minute, so i will add it to crontab
echo "* * * * * /home/ec2-user/shell-scripting/01-hello.sh" | crontab