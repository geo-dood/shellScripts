#!/bin/bash
LOG_FILE="$1"
# Most common source IP for website connections
echo ""
awk '{ print $1}' ~/Documents/Shell-scripts/Linux2/apache/access.log.30 | sort | uniq -c | sort -nr | head -n 1
echo ""
# Most common browser User-Agent
echo "Here is the most common user browser agent, along with the amount of times it appears in the log."
awk -F\" '($2 ~ "^GET /"){print $6}' ~/Documents/Shell-scripts/Linux2/apache/access.log.30 | sort | uniq -c | sort -nr | head -n 1 
echo ""
# Iphone vs OSX Mac?
echo "Here's 5 results with 'iPhone' in them\n"
awk -F\" '($2 ~ "^GET /"){print $6}' ~/Documents/Shell-scripts/Linux2/apache/access.log.30 | sort | uniq -c | sort -nr | grep -ni "iPhone" | head -n 5
echo ""
echo "And here's 5 results with 'Macintosh' in them - although there's other listings that indicate MacOS as well\n"
awk -F\" '($2 ~ "^GET /"){print $6}' ~/Documents/Shell-scripts/Linux2/apache/access.log.30 | sort | uniq -c | sort -nr | grep -ni "Macintosh" | head -n 5
echo ""
# Mac vs Windows?

