#!/bin/sh

REPOPATH="${HOME}/dev/mezamashi_yukkuri"
HOST="rasp"
TARGETPATH="/home/vjsigsig/work/"

rsync -av \
	--exclude='README.md' \
	--exclude='.git/' \
	--exclude='script/' \
"${REPOPATH}" "${HOST}":"${TARGETPATH}"
