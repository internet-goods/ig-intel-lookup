#!/bin/bash
mkdir $(date -I)
cd $(date -I)
curl --url https://www.virustotal.com/api/v3/users/$1/overall_quotas --header 'x-apikey: $1' > vt_overallquotas.json
curl --url https://www.virustotal.com/api/v3/users/$1/api_usage --header 'x-apikey: $1' > vt_api_usage.json
