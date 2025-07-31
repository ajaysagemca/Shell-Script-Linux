#!/bin/bash

# CPU utilization
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
cpu_usage_int=${cpu_usage%.*}

# Memory utilization
mem_values=$(free -m | awk 'NR==2 {print $3 " " $2}')
used_mem=$(echo $mem_values | cut -d' ' -f1)
total_mem=$(echo $mem_values | cut -d' ' -f2)
mem_usage_percent=$(( 100 * used_mem / total_mem ))

# Thresholds
cpu_threshold=70
mem_threshold=80

# Check conditions
if [ "$cpu_usage_int" -gt "$cpu_threshold" ] || [ "$mem_usage_percent" -gt "$mem_threshold" ]; then
  message="System Resource Alert:

CPU Usage: $cpu_usage_int% (Threshold: $cpu_threshold%)
Memory Usage: $mem_usage_percent% (Threshold: $mem_threshold%)"

  # Send SNS Alert
  aws sns publish \
    --topic-arn arn:aws:sns:us-east-1:779846778586:system-alerts \
    --message "$message" \
    --region us-east-1
else
  echo "Usage is normal. No alert sent."
fi
