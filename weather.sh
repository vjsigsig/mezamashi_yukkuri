#!/bin/bash


## 札幌市のエリアID
AREA_ID="016010"

## 固定メッセージ
PREFIX="今日の札幌市の天気は"


## json取得
JSON_RESPONSE=`curl -s http://weather.livedoor.com/forecast/webservice/json/v1?city=${AREA_ID}`

## 今日の天気取得
TO_DAY=`echo "${JSON_RESPONSE}" |jq -r .forecasts[0].telop`

## 固定メッセージと組み合わせ
MESSAGE="${PREFIX} ${TO_DAY}"

## 作成したメッセージを返す
echo ${MESSAGE}
