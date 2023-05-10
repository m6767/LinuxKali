#!/bin/sh
date >> news1.txt
curl -s https://news.mail.ru/rss/ | grep -E -o '<div class="opened">...</div>' | sed 's/[a-zA-z]//g' | sed 's/<.*>/\n/' | sed 's/< ="">//' | sed 's/<\/>//g' | sed 's/\n/1/g' | sed 's/&;//g' | sed '11,$d' >> news1.txt
