# Header
echo "======================"
echo " Server Stats Report "
echo "======================"
echo ""

# CPU Usage
echo "1. Total CPU Usage:"
mpstat | grep -A 5 "%idle" | tail -n 1 | awk '{usage=100-$12} END {print usage "%"}'
echo ""

# Memory Usage
echo "2. Total Memory Usage:"
free -k | awk '/^Mem:/ {printf "Used: %.2f MiB / Total: %.2f MiB (%.2f%%)\n", $3/1024, $2/1024, $3/$2 * 100}'
echo ""

# Disk Usage
echo "3. Total Disk Usage:"
df -h --total | grep 'total' | awk '{printf "Used: %s / Total: %s (%s)\n", $3, $2, $5}'
echo ""

# Top 5 Processes by CPU Usage
echo "4. Top 5 Processes by CPU Usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo ""

# Top 5 Processes by Memory Usage
echo "5. Top 5 Processes by Memory Usage:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
echo "
