#!/bin/bash
RUNDATE="$(date "+%Y-%m-%d")"
echo $RUNDATE
mkdir $RUNDATE
cd $RUNDATE
curl https://otx.alienvault.com/api/v1/indicators/url/$2/general -H "X-OTX-API-KEY: $1" > `date +%s`.url.indicators.json
