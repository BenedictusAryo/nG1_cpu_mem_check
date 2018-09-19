HN=$(hostname)
echo $HN
sar | awk 'END{print "CPU Utilization : " 100-$8 "%"}'
free -m | grep Mem | awk '{usage=100-(($4/$2)*100)} {print "Memory Usage : " usage "%"}'
