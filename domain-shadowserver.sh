#!/bin/bash
RUNDATE="$(date "+%Y-%m-%d")"
echo $RUNDATE
mkdir $RUNDATE
cd $RUNDATE
git clone https://github.com/The-Shadowserver-Foundation/api_utils/
api_utils/call-api.py reports/query '{"query": {"domain": "$1"}}'> shadowserver.domain.$1.json
