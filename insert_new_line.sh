#!/bin/bash

FILES="$1"/*
clear
for f in $FILES
do
 last_char=$(tail -c 1 $f)
 if [ "$last_char" != "" ]; then
    console_out "$f" "$last_char"
    add_nl $f
 fi
done

console_out(){
  echo "reading file  : $1"
  echo "last character: $2"
  echo "-"
}

add_nl(){
  echo "" >> "$f"
  echo "adding newline"
  echo "-"
  sleep 1
}
