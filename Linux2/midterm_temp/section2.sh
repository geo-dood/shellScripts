echo "************************
* Linux Server 2 Section 2 Midterm Script
* Maysack-Schlueter
* 07/18/2022
************************"

grep "zen.spamhaus.org" security.log | wc -l
grep -l "b.barracudacentral.org" security.log | grep -oE "\b([0-9]{1,3}\.){ 3}[0-9]{1,3}\b" | head -n 2
