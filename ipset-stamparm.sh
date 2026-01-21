ipset create ipsum hash:ip
curl -s https://raw.githubusercontent.com/stamparm/ipsum/master/levels/3.txt | \
grep -v "#" | while read ip; do 
     ipset add ipsum $ip
done
