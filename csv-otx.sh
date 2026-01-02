#!/bin/bash
RUNDATE="$(date "+%Y-%m-%d")"
echo $RUNDATE
mkdir $RUNDATE
cd $RUNDATE
#REST method
for i in {1..100}
do
curl https://otx.alienvault.com/api/v1/pulses/subscribed?page=$i -H "X-OTX-API-KEY: $1" > pulses.subscribed$i.json
cat pulses.subscribed$i.json  |jq '.results[].indicators[]| "\(.type),\(.indicator),OTX \(.created) \(.description)"' | awk '{ gsub("\"","") ; print $0 }' > pulses.subscribed$i.csv
done

grep FileHash-SHA256 *.csv | csvcut -c 2 | awk '{ gsub("\"","") ; print $0 }' > OTX.sha256
grep FileHash-SHA1 *.csv | csvcut -c 2 | awk '{ gsub("\"","") ; print $0 }' > OTX.sha1
grep FileHash-MD5 *.csv | csvcut -c 2 | awk '{ gsub("\"","") ; print $0 }' > OTX.md5

echo url,threat_list_name >  OTXurls.csv
grep "URL," *.csv |csvcut -c 2,3 | awk '{ gsub("\"","") ; print $0 }' >> OTXurls.csv

echo domain,threat_list_name > OTXdomain.csv
grep "domain," *.csv  | csvcut -c 2,3 | awk '{ gsub("\"","") ; print $0 }' >> OTXdomain.csv
grep "hostname," *.csv | csvcut -c 2,3 | awk '{ gsub("\"","") ; print $0 }' >> OTXdomain.csv

echo dest_ip,threat_list_name > OTXip.csv
grep "IPv4." *.csv |csvcut -c 2,3 | awk '{ gsub("\"","") ; print $0 }' >> OTXip.csv
