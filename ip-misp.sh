#!/bin/bash
RUNDATE="$(date "+%Y-%m-%d")"
mkdir $RUNDATE
cd $RUNDATE
curl -X POST \
  -H "Authorization: $1" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -d '{
    "returnFormat": "json",
    "value": "$3"
  }' \
  https://$2/attributes/restSearch > $3.misp.json
