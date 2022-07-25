#!/bin/bash
echo "********************
Linux Server 2 Midterm Section 2 Script
Maysack-Schlueter
07/18/2022
********************"
grep "zen.spamhaus.org" security.log | wc -l
grep "barracudacentral.org as " security.log | sort | uniq -c | head -n 2 | tail -n 1
echo ""
grep "does not resolve to address " security.log | sort | uniq -c | grep "78.128.113.119" | head -n 1
