#!/bin/bash

# acquire current time
current_date=$(date +%Y%m%d)
current_time=$(date +%H%M%S)

# check the count of arguments
if [ $# -lt 1 ]; then
  echo "usage: $0 <log-directory>"
  exit 1
fi

directory=$1

tar -cvf ${directory}/logs_archive_${current_date}_${current_time}.tar.gz /var/logs

echo "done"
