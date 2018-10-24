##exercice 1
grep titi french
#ou
cat french | grep titi

grep w french | grep k

grep latif$ french

grep ^dé.*dé$ french

grep ^ent....ent$ french

grep ^[a-ru-z-]*st$ french

grep ^[^st]*st$ french

#il faut "échapper" (escape) les caractères lorsque les regex réguliers sont utilisés
#ici les () expriment un groupe, les {} doivent le répéter 3 fois
grep "\(-.*\)\{3\}" french

#Pour ce problème grep n'est peut-être pas approprié. 
#[[=e=]] ne semble pas fonctionner sur toutes les machines
#Notez que l'on commence avec quelque chose qui n'est pas un "e" ou pas
#Notez que l'on termine avec un ensemble de lettre qui n'est pas
grep "^[^eéèêë]*[eéèêë][^eéèêë]*t[^eéèêë]*[eéèêë][^eéèêë]*t[^eéèêë]*[eéèêë]\([^eéèêë]*\)$" french

cat french | grep -o .$ | sort | uniq -c | sort -n -k 1 -r | head -n 1

cat french | grep -o ..$ | cut -c 1 | sort | uniq -c | sort -n -k 1 | tail -n 1
