#!/bin/bash
RUNDATE="$(date "+%Y-%m-%d")"
echo $RUNDATE
mkdir $RUNDATE
cd $RUNDATE
curl https://api.emergingthreats.net/v1/domains/$2/reputation  -H "Authorization: $1" > $2.etpro.domain.reputation.json
