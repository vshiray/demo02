#!/bin/bash -e

cd config

echo "{"
while read f
do
  read v <$f
  echo "  \"${f:2}\": \"$v\""
done < <(find -type f)
echo "}"
