#!/usr/local/bin/bash

Recips="distrsales@vitmark.com ,tsys_v@diad.com.ua , a.v.ponomarenko@vitmark.com , prog@diad.com.ua , vasiliev-inlan@yandex.ru"
Subj="35672291"
Body="DIAD"
FromDir="/Samba/vitmark/KRAM/"


FilesCnt=`ls -1 $FromDir| wc -l`

if [ $FilesCnt -gt 0 ]
then
 echo "$Body" | mutt -s "$Subj"  -a $FromDir*  -- $Recips
 echo $FilesCnt" files sent" 
else
 echo "no files to send" && exit 1
fi

   





