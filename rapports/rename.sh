#! /bin/bash

find . -maxdepth 1 -type d | while read folder
do
    newName=`echo ${folder} | sed -e "s/Label issue \#\(..\).*$/Rapport_issue_\1/"`
    echo ${folder} "->" ${newName}
    mv "${folder}" ${newName}
done