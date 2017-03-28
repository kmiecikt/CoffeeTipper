#!bin/bash

if [ -z "$1" ]; then
  echo "No pattern specified."
  exit 0
fi

pattern=$1
files=( $pattern )

echo "Removing all ABI APKs except the Universal APK…"
i=0

for file in `ls $pattern`
do
  if [ $i -gt 0 ]; then
    rm $file
    echo "  Removed APK $file"
  fi
  i=$((i+1))
done