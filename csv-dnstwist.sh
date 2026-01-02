#!/bin/bash
rm -rvf $(date -I) 
mkdir $(date -I)
cd $(date -I)
#STEP ONE INSTALL
git clone --depth=1 https://github.com/elceef/dnstwist
git clone --depth=1 https://github.com/datasets/top-level-domain-names

#STEP TWO ASSESS domain for registered domains
#dnstwist/dnstwist.py -r -m $1 -o $1.dnstwist-r-m.csv -f csv
dnstwist/dnstwist.py -r -o $1.dnstwist.csv -f csv $1

#STEP THREE ASSESS domain for TLDs
git clone https://github.com/datasets/top-level-domain-names
cd top-level-domain-names
cat top-level-domain-names.csv | awk -F. '{print "dig domain"$1" soa > TLDSOAdomain"$1}'  > $1TLDSOA.sh
