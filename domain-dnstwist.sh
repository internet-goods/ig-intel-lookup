#!/bin/bash
rm -rvf $(date -I) 
mkdir $(date -I)
cd $(date -I)
git clone --depth=1 https://github.com/elceef/dnstwist
git clone --depth=1 https://github.com/datasets/top-level-domain-names
#../dnstwist/dnstwist.py -r $1 -o $1.dnstwist-r.csv -f csv
dnstwist/dnstwist.py -r -m $1 -o $1.dnstwist-r-m.csv -f csv
#dnstwist/dnstwist.py $1 -o $1.dnstwist.csv -f csv
#csvcut -c Domain top-level-domain-names/top-level-domain-names.csv |awk -v tld="$2" '{print tld$0}'
csvcut -c Domain top-level-domain-names/data/top-level-domain-names.csv |tail -n +2 > top-level-domain-names.txt

#same as without tld?dnstwist/dnstwist.py -r --tld top-level-domain-names.txt -f csv -o $1.dnstwist-r--tld.csv $1
#DIG METHOD
TLDME=$(echo $1 |awk -F. '{print $1}')
mkdir dig
cat top-level-domain-names.txt|awk -v tehdomainz="$TLDME" '{print "dig "tehdomainz$0" soa > "tehdomainz$0".digsoa.txt" }' > dig/digsoa.sh
cat top-level-domain-names.txt|awk -v tehdomainz="$TLDME" '{print "dig "tehdomainz$0" mx > "tehdomainz$0".digsoa.txt" }' > dig/digsmx.sh
cat top-level-domain-names.txt|awk -v tehdomainz="$TLDME" '{print "dig "tehdomainz$0" > "tehdomainz$0".digsa.txt" }' > dig/diga.sh
cd dig
bash digsoa.sh
grep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' *digsoa.txt
