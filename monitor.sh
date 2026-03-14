echo "--- System Report $(date) ---" > /var/log/system_report.log
echo "Disk Usage:" >> /var/log/system_report.log
df -h >> /var/log/system_report.log
echo "Top 5 Resource Intensive Processes:" >> /var/log/system_report.log
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6 >> /var/log/system_report.log

