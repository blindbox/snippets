#!/usr/bin/env bash

read -r -d '' config << eof
LineOne
LineTwo
eof
awk -v r="$config" '{gsub(/\#__STRING_TO_REPLACE__/,r)}1' /path/to/file
