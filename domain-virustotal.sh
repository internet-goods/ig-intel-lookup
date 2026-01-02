#!/bin/bash
RUNDATE="$(date "+%Y-%m-%d")"
echo $RUNDATE
mkdir $RUNDATE
cd $RUNDATE
curl --request GET --header "x-apikey: $1" https://www.virustotal.com/api/v3/domains/$2 > vtdomain_$2.json
