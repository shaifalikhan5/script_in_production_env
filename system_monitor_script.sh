#!/bin/bash

threshold=90
recipient="shaifalikhan5@gmail.com.com"
subject="High CPU Usage Detected"

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)

if [ "$cpu_usage" -gt "$threshold" ]; then
    echo "High CPU usage detected: $cpu_usage%"

    # Send an email notification
    echo "High CPU usage detected: $cpu_usage%" | mail -s "$subject" "$recipient"
fi
