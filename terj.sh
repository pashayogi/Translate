#!/bin/bash
# auto translate via bash shell
# create by MR.K7C8NG
# YANG RECODE JANCOK
hijau=$(tput setaf 2)
translate(){
         aoao=$(curl "https://translate.google.com/m?hl=id&sl=$frm&tl=$toz&ie=UTF-8&prev=_m&q=$TRJ" --location --silent \
         -H 'authority: translate.google.com'  \
         -H 'pragma: no-cache' \
         -H 'cache-control: no-cache' \
         -H 'upgrade-insecure-requests: 1' \
         -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36' \
         -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' \
         -H 'accept-encoding: gzip, deflate, br' \
         -H 'accept-language: id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7' --compressed)
   njr=$(echo -e "$aoao" | grep -Po 'class="t0">(\D+)</div>' | cut -d ">" -f2 | cut -d "<" -f1)
  echo -e "[+] Result -> $njr"
}
echo "${hijau}"
cat << "EOF"
           /!_.-_|\      
           `-/_'--'                                
           (_(o)\\\)                               
            (||\\\\;_,                             
             /  _-".----.    AUTHOR : MR.K7C8NG                      
           ./_-"  /o,--.o\ 
          /      |o (  ) o|                        
         !__,--.__\o `-'o/   GOOGLE TRANSLATE ==                      
          |_-__--__`----'                          
         __,/\_|\/\,                               
        (   `/_'`X_;         
         `.____)____)
EOF
echo -n "translate -> "; read TRJ
echo -n "from :"; read frm
echo -n "to :"; read toz
translate