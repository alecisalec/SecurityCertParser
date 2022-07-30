#!/bin/bash

echo $1
curl https://crt.sh/?q=$1 | grep -E ".com|.edu|.net|.gov|.cn" |
grep -v 'TD><A' |
grep -v '/A>' |
sed 's/<BR>/\n/g' |
sed 's/<[^>]*>//g ; /^$/d'|
sed 's/^[ \t]*//' |
sort -u | uniq > results.txt
