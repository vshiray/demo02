#!/bin/bash -e

cd config

nl=""
echo "{"
while read f
do
  read v <$f
  echo -en "$nl  \"${f:2}\": \"$v\""
  nl=",\n"
done < <(find -type f)
echo -e "\n}"
