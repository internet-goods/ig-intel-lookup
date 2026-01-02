#!/bin/bash
RUNDATE="$(date "+%Y-%m-%d")"
mkdir $RUNDATE
cd $RUNDATE
curl -X 'GET'   'https://hashlookup.circl.lu/lookup/sha1/$1'   -H 'accept: application/json' > ip-circl-sha-$1.json
curl -X 'GET'   'https://hashlookup.circl.lu/lookup/sha256/$1'   -H 'accept: application/json' > ip-circl-sha256-$1.json
