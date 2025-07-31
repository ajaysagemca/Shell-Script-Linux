#!/bin/bash
 
# cpu utilization

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
cpu_usage_int=${cpu_usage%.*}

# memory utilization
mem_usage=$(free -m | awk  'NR==2 {print $3 " " $2}')
memory_usage=$( echo $mem_usage | cut -d' ' -f1)
total_usage=$(echo $mem_usage | cut -d' ' -f2)
memory1_usage=$(echo "scale=2; $memory_usage*100/$total_usage" | bc)
memory_usage_int=${memory1_usage%.*}

# cpu
if [ "$cpu_usage_int" -gt 10 ]
then
    echo "cpu utilization is high $cpu_usage_int"
else
    echo "cpu utilization is normal $cpu_usage_int"
fi

# memory
if [ "$memory_usage_int" -gt 10 ]
then
    echo "memory utilization is high $memory_usage_int"
else
    echo "memory utilization is normal $memory_usage_int"
fi

