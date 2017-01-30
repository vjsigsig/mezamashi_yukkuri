#!/bin/bash


## 日付
YEAR=`date +"%Y"`
MONTH=`date +"%m"`
DAY=`date +"%d"`

## 抽出対象星座
TARGET_SIGNS="牡牛座 天秤座"


## json取得
JSON_RESPONSE=`curl -s http://api.jugemkey.jp/api/horoscope/free/${YEAR}/${MONTH}/${DAY}`

## コンテンツ抽出
CONTENTS=`echo "${JSON_RESPONSE}" |jq -r ".horoscope.\"${YEAR}/${MONTH}/${DAY}\""`

## 星座毎に占いを抽出
MESSAGE=""
for SIGN in ${TARGET_SIGNS}; do
    TMP=`echo ${CONTENTS} |jq -r ".[] |select(.sign == \"${SIGN}\")"`

    ## 内容
    PRE_CONTENT="${SIGN}の運勢は"
    CONTENT=`echo "${TMP}" |jq -r ".content"`

    ## ラッキーカラー
    PRE_COLOR="ラッキーカラーは"
    COLOR=`echo "${TMP}" |jq -r ".color"`

    ## 結合
    MESSAGE="${MESSAGE} ${PRE_CONTENT} ${CONTENT}"
    MESSAGE="${MESSAGE} ${PRE_COLOR} ${COLOR}"
done

echo "${MESSAGE}"
