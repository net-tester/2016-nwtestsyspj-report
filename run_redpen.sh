#!/bin/sh

redpen=/usr/local/redpen/bin/redpen
redpen_conf=./redpen.xml
redpen_log=redpen.log
pandoc=/usr/bin/pandoc

rm -f $redpen_log
for source in `ls *.tex | egrep -ve "(cites|main)"`
do
    $redpen -c $redpen_conf -f latex $source \
               >> $redpen_log # drop url and table lines
done
