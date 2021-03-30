#!/bin/bash



find -regex '.*/.*\.\(c\|cpp\|h\)$' > compile.txt


file='compile.txt'
while read line; do
word="$line"
length=${#word}
length=$(( length - 4 ))
word=${word:2:$length}
echo $word
gcc $word.c -o $word
i=$((i+1))
done < $file


