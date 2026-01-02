!/bin/bash
mkdir $(date -I)
cd $(date -I)
echo $1 $2
curl https://api.shodan.io/shodan/host/$2?key=$1 > $2.shodanip.json
cat $2.shodanip.json|jq
sleep 2
