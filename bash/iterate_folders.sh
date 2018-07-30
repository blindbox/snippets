#!/usr/bin/env bash

# projects/projectAa and projects/projectBb
for dir in /some/folder/projects/*/
do
    dir=${dir%*/} # /some/folder/projects/projectA
    dir_clean=${dir##*/} # projectA
    if [ -e "$dir/someFile" ]
    then
        echo "hey hey hey"
    fi
done
