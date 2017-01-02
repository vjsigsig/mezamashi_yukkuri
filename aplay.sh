#!/bin/bash

shopt -s expand_aliases
source ~/.bash_aliases

## ルート
ROOT_PATH="/home/vjsigsig/dev"

## 初っ端の挨拶
GREETING=`${ROOT_PATH}/greeting.sh`

## 日付
DATE=`${ROOT_PATH}/date.sh`

## お天気
WEATHER=`${ROOT_PATH}/weather.sh`

## ゴミ収集
TRASH=`${ROOT_PATH}/trash.sh`

## 占い
FORTUNE=`${ROOT_PATH}/fortune.sh`

## 締めの挨拶
CLOSING=`${ROOT_PATH}/closing.sh`


sleep 1; yukkuri -s 80 "${GREETING}" |aplay > /dev/null 2>&1
sleep 1; yukkuri -s 80 "${DATE}" |aplay > /dev/null 2>&1
sleep 1; yukkuri -s 80 "${WEATHER}" |aplay > /dev/null 2>&1
sleep 1; yukkuri -s 80 "${TRASH}" |aplay > /dev/null 2>&1
sleep 1; yukkuri -s 90 "${FORTUNE}" |aplay > /dev/null 2>&1
sleep 1; yukkuri -s 80 "${CLOSING}" |aplay > /dev/null 2>&1
