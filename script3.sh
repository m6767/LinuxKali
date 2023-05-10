#!/bin/sh
cd /home/sh67
touch AllInfo.txt
echo |ls >> AllInfo.txt
echo |man 1 man >> AllInfo.txt
echo |man grep > Grep.txt; echo |grep -c grep Grep.txt >> AllInfo.txt; rm -d Grep.txt 
echo |ps -e >> AllInfo.txt inf.txt
