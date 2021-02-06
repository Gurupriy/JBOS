#!/bin/bash
# Code example from https://www.cyberciti.biz/faq/unix-howto-read-line-by-line-from-file/

input="/path/to/txt/file" #Input file which contains the input strings that need to be searched
while IFS= read -r line
do
  echo "$line"
  grep $line *.log >> output.log # Searches the required string from multiple files. 
done < "$input"
