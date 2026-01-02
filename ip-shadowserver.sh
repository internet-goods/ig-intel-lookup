#!/bin/bash
RUNDATE="$(date "+%Y-%m-%d")"
echo $RUNDATE
mkdir $RUNDATE
cd $RUNDATE
git clone https://github.com/The-Shadowserver-Foundation/api_utils/
api_utils/call-api.py asn/query '{"ip": "$1"}' > shadowserver.ip.$1.json
