#!/bin/bash
today=`date '+%Y%m%d'`;
SOURCE_PATH="/home/swohl/repo/steveMove/"
DEST_PATH="/home/swohl/repo/steveMove/saved/"

declare -a arr=("test" "text2" "test3")

for i in "${arr[@]}"
do
   echo $i
   for entry in `ls $SOURCE_PATH | grep $i`; do
       ext=$(echo "$entry" | cut -f 2 -d '.')
       name=$(echo "$entry" | cut -f 1 -d '.')
       fullFilePath=$SOURCE_PATH
       fullFilePath+=$entry
       destFullPath=$DEST_PATH
       destFullPath+=$name
       destFullPath+=_
       destFullPath+=$today
       destFullPath+=.
       destFullPath+=$ext
       mv $fullFilePath $destFullPath
   done
done

