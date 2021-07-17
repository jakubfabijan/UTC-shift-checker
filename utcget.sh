#!/bin/bash
get="$(expr $(date +%H) - $(date -u +%H))"
if [[ $get -lt 0 ]]
then
    echo UTC$get
elif [[ $get -gt 0 ]]
then
    echo UTC+$get
else
    echo UTC
fi
