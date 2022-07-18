echo "************************
* Linux Server 2 Section 2 Midterm Script
* Maysack-Schlueter
* 07/18/2022
************************"

grep "zen.spamhaus.org" security.log | wc -l
grep "b.barracudacentral.org as " security.log | grep -oE "\b([0-9]{1,3}\.){ 3}[0-9]{1,3}\b" | uniq -c | head -n 2 | tail -n 1
grep -w 'dnsbl rank' security.log | sort | head -n 1
