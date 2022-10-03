#!/bin/bash -e

cd config
while read f
do
  read v <$f
  echo "$f = $v"
done < <(find -type f)
