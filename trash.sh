#!/bin/bash

CITY="1010109"
AREA="1010109202"


## curl取得
CURL_RESPONSE=`curl -s http://www.53cal.jp/areacalendar/\?city=1010109\&area=1010109202 |grep bubble_txt`

MESSAGE=`echo ${CURL_RESPONSE} |sed -e 's/<[^>]*>//g'`

echo "${MESSAGE}"
