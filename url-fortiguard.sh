mkdir $(date -I)
echo test fortiguard is active
cd $(date -I)
for i in {1..100}; do wget "https://fortiguard.fortinet.com/wftest/${i}.html"; sleep 1 done
