#!/usr/local/bin/bash

Recips="synaps@mail.ua , prog@diad.com.ua ,tsys_v@diad.com.ua , vasiliev-inlan@yandex.ru"
Subj="distrib13"
Body="DIAD"
FromDir="/Samba/romnu/DIAD/"


FilesCnt=`ls -1 $FromDir| wc -l`

if [ $FilesCnt -gt 0 ]
then
 echo "$Body" | mutt -s "$Subj"  -a $FromDir*  -- $Recips
 echo $FilesCnt" files sent" 
else
 echo "no files to send" && exit 1
fi

   





