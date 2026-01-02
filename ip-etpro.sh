#!/bin/bash
RUNDATE="$(date "+%Y-%m-%d")"
mkdir $RUNDATE
cd $RUNDATE
curl https://api.emergingthreats.net/v1/ips/$2/reputation  -H "Authorization: $1" > $2.etpro.ips.reputation.json
