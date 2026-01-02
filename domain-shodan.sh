#!/bin/bash
mkdir $(date -I)
cd $(date -I)
curl https://api.shodan.io/dns/domain/$2?key=$1 > $2.shodandomain.json
cat $2.shodandomain.json|jq
sleep 2
