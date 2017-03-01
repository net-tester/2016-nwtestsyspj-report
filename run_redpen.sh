#!/bin/bash

redpen=/usr/local/redpen/bin/redpen
redpen_conf=redpen.xml

function check_text () {
    echo "# Check $1"
    $redpen -c $redpen_conf -f latex -r plain2 $1 2>/dev/null
}

if test $1 -a -f $1
then
    check_text $1
else
    for file in `ls *.tex | egrep -ve "(cites|main)"`
    do
        check_text $file
    done
fi

