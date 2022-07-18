echo "************************
* Linux Server 2 Section 2 Midterm Script
* Maysack-Schlueter
* 07/18/2022
************************"

grep "zen.spamhaus.org" security.log | wc -l
grep "b.barracudacentral.org as " security.log | grep -E "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" | uniq -c | head -n 2 
