ls -l /usr/lib | sort -k 5 -n | tail -n 1 | cut -d ' ' -f 7 | numfmt --to=si

cat /dev/zero | head -c 1234567 > fichier #-c pour les bytes et non -n pour les lignes
chmod 421 fichier
ln fichier liendur1
ln fichier liendur2
touch -m [ladate] fichier #vérifier s'il faut inclure -d aussi

gzip toto -f

mv l\'\* "./-|-"

Dans d2
ln -s ../f0 ../l0
ln -s f1 ../l1
ln -s ln -s d2/f2 ../l2

cat /usr/share/dict/french | grep -e "^[^eéèêë]*è\([^eéèêë]*\)$"

cat /usr/share/common-licenses/GPL | grep -ve '^$' | grep -vi e

#Question sur cat *.txt | tr -cd '[:alnum:]' | grep -o '[0-9]*' > list
La commande supprime tout ce qui n'est pas alphanumérique (complément de) des fichiers lus en sortie standard et attrape avec grep seulement les "match" de la nouvelle ligne (\n est supprimé) qui ont un un mot qui contient seulement des nombres pour finalement mettre tout ça dans le fichier list (qui est créé ou écrasé)

Faire cat Z1.txt | tr -cd '[:alnum:]'
Faire cat Z1.txt | tr -cd '[:alnum:]' | grep -o '[0-9]*'

il y a 4 programme exécuté
    cat | tr | grep > list & && ps 
bash, cat, tr, grep

bash est responsable de *.txt (globing)
grep est responsable de [0-9]* (il s'agit de son argument)
non (mais je ne suis pas certain) tr regex
cat:10 (les Z*), tr:2 (alnum et stdin), grep 2 ([] et stdin) ... bash 1 (la commande)
< *.txt fonctionne oui
> stdout, 2> stderr (essayer avec l'exemple de `mv banane allo` vu en lab')
Pas claire comme question
sed "s/match/remplacement/g" g pour global et non seulement un (voir man sed)

sudo rm -rf /usr supprime l'ensemble de usr récursivement, contient généralement l'ensemble des données des utilisateurs et programme destinés aux utilisateurs, doc et librairies.
sudo rm -rf ~/ supprime LE CONTENU du home (répertoire local à l'utilisateur)

n'hésitez pas à écrire au professeur pour tous les détails. Tout ça est très précis et profond dans bash.
