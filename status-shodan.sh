#!/bin/bash
mkdir $(date -I)
cd $(date -I)
curl https://api.shodan.io/api-info?key=$1 > shodan-api-info.json
