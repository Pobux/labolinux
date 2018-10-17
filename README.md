# labolinux

  1 ##exercice 1
  2 grep titi french
  3 #ou
  4 cat french | grep titi
  5 
  6 grep w french | grep k
  7 
  8 grep latif$ french
  9 
 10 grep ^dé.*dé$ french
 11 
 12 grep ^ent....ent$ french
 13 
 14 grep ^[a-ru-z-]*st$ french
 15 
 16 grep ^[^st]*st$ french
 17 
 18 cat french | grep -o .$ | sort | uniq -c | sort -n -k 1 -r | head -n 1
 19 
 20 cat french | grep -o ..$ | cut -c 1 | sort | uniq -c | sort -n -k 1 -r | head -n 1
