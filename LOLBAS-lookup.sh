#!/bin/bash
mkdir $(date -I)
cd $(date -I)
git clone https://github.com/LOLBAS-Project/LOLBAS/
grep "\- Path:" LOLBAS/yml/OSBinaries/*| awk -F"Path: " '{print $2}' > LOLBASPath.txt
grep "\- Path:" LOLBAS/yml/OSBinaries/*| awk -F"Path: " '{print "Get-FileHash -Path \""$2"\""}' > LOLBASPATH.ps1
