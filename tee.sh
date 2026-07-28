#!/bin/bash

logs_dir= /var/log/shell-script
mkdir -p "$logs_dir"
log_file= "$logs_dir/$0.log"
time_stamp= $(date +"%Y-%m-%d_%H-%M-%S")

echo "Using tee command at $time_stamp" | tee -a $log_file