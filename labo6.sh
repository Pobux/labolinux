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

cat french | grep -o .$ | sort | uniq -c | sort -n -k 1 -r | head -n 1

cat french | grep -o ..$ | cut -c 1 | sort | uniq -c | sort -n -k 1 -r | head -n 1
