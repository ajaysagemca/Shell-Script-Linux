#!/bin/bash

# CPU utilization
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
cpu_usage_int=${cpu_usage%.*}

# Memory utilization
mem_usage=$(free -m | awk 'NR==2 {print $3 " " $2}')
memory_usage=$(echo $mem_usage | cut -d' ' -f1)
total_usage=$(echo $mem_usage | cut -d' ' -f2)
memory1_usage=$(echo "scale=2; $memory_usage*100/$total_usage" | bc)
memory_usage_int=${memory1_usage%.*}

# Check utilization and create message
message=""
subject="System Resource Alert"

if [ "$cpu_usage_int" -gt 10 ]; then
    message+="CPU utilization is HIGH: $cpu_usage_int%\n"
else
    message+="CPU utilization is normal: $cpu_usage_int%\n"
fi

if [ "$memory_usage_int" -gt 10 ]; then
    message+="Memory utilization is HIGH: $memory_usage_int%\n"
else
    message+="Memory utilization is normal: $memory_usage_int%\n"
fi

# If any utilization is high, send email using SES
if [[ "$cpu_usage_int" -gt 10 || "$memory_usage_int" -gt 10 ]]; then
    aws ses send-email \
      --from "ajaysahu909871@gmail.com" \
      --destination "ToAddresses=ajaysahu909871@gmail.com" \
      --message "Subject={Data=$subject,Charset=utf-8},Body={Text={Data=$message,Charset=utf-8}}"
fi

