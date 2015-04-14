#!/bin/sh
QUOTES_LENGTH=$(cat quotes.json | jq '. | length')
RAND=$(shuf -i 0-$QUOTES_LENGTH -n 1)
QUOTE=$(cat quotes.json | jq .[$RAND].body)
AUTHOR=$(cat quotes.json | jq .[$RAND].source)
echo "${QUOTE//\"/}"
echo  " - ${AUTHOR//\"/}"
