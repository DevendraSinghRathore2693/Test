#!/bin/bash
#################################
#author: Devendra
#date: 30/05/2026
#################################
set -x
set -e
set -o pipefail

CPU_limit=80
RAM_limit=80

CPU_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    if [ "$CPU_usage" -gt "$CPU_limit" ]; then
        echo "CPU usage is above the limit: $CPU_usage%"
    else
        echo "CPU usage is within the limit: $CPU_usage%"
    fi



