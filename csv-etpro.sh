#!/bin/bash
RUNDATE="$(date "+%Y-%m-%d")"
echo $RUNDATE
mkdir $RUNDATE
cd $RUNDATE
curl https://api.emergingthreats.net/v1/repcategories -H "Authorization: $1" > v1.repcategories.json
<<<<<<< HEAD
curl https://rules.emergingthreatspro.com/$2/snort-2.9.0/etpro-all.rules > etpro-all.rules 

curl https://rules.emergingthreatspro.com/$2/suricata-5.0/rules/ja3.rules > ja3.rules
echo etpro,ja3 > etpro.ja3.csv
cat ja3.rules |awk -F"\"" '{print $2","$4}' |grep -v ^, >> etpro.ja3.csv
