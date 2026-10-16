echo test fortiguard is active
for i in {1..100}; do curl -O "https://fortiguard.fortinet.com/wftest/${i}.html"; sleep 1 done
